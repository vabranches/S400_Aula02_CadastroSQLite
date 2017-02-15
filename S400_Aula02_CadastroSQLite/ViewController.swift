
import UIKit

//MARK: Sandbox
let caminhoParaSandbox = NSHomeDirectory()
let caminhoDocuments = (caminhoParaSandbox as NSString).appendingPathComponent("Documents")
let caminhoArquivo = (caminhoDocuments as NSString).appendingPathComponent("arquivo.sqlite")


class ViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var textFieldNome: UITextField!
    @IBOutlet weak var textFieldIdade: UITextField!
    @IBOutlet weak var textViewLista: UITextView!
    
    //MARK: Propriedades
    var database : OpaquePointer? = nil //Objeto que ajuda a escrever códigos de C em Swift

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Verificando se o arquivo do banco existe
        if (FileManager.default.fileExists(atPath: caminhoArquivo)){
            
            //Caso o banco exista
            if (sqlite3_open(caminhoArquivo, &database) == SQLITE_OK){
                
            }
            
            //Caso o banco tenha sido aberto
            print("Banco de dados aberto com sucesso")
            
            
        } else {
            
            print("Erro ao abrir o banco")
        
        }
        
        
        //

    }
    
    //MARK: Actions
    @IBAction func cadastrarAluno(_ sender: UIButton) {
    }

    @IBAction func listarAlunos(_ sender: UIButton) {
    }
    
    //MARK: Métodos de UIResponder
    override var canBecomeFirstResponder: Bool{
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.becomeFirstResponder()
    }

}

//MARK: Extension de String
extension String{
    var intValor : Int{
        let conversao = self as NSString
        return Int(conversao.intValue)
    }
}





































