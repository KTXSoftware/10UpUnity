package dialogue;

import Dialogue.DialogueItem;
import kha.Sprite;

class Bla implements DialogueItem {
	var text : String;
	var speaker : Sprite;
	
	public var finished(default, null) : Bool = false;
	
	public function new (txtKey : String, speaker : Sprite) {
		this.text = Localization.getText(txtKey);
		this.speaker = speaker;
	}
	
	public function execute(dlg: Dialogue) : Void {
		if (dlg.blaBox == null) {
			dlg.blaBox = new BlaBox(text, speaker);
			BlaBox.boxes.push(dlg.blaBox);
		} else {
			finished = !Lambda.has(BlaBox.boxes, dlg.blaBox);
		}
	}
}
