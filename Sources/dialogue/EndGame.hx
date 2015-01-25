package dialogue;
import kha.Scene;

class EndGame implements Dialogue.DialogueItem
{
	public function new() {}
	
	public var finished(default, null) : Bool = true;
	
	public function execute(dlg: Dialogue): Void {
		//Dialogues.setGameEnd();
		// TODO!
		dlg.next();
	}
}