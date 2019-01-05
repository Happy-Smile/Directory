import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 현재 작업 디렉토리
        let currentPath = FileManager.default.currentDirectoryPath
        print(currentPath)
        
        // 현재 앱의 Document 디렉토리
        var paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        let docPath = paths[0]
        print(docPath)
        
        // Temp 디렉토리
//        let tempPath = NSTemporaryDirectory()
//        print(tempPath)
        
        let applicationSupportPaths = NSSearchPathForDirectoriesInDomains(.applicationSupportDirectory, .userDomainMask, true)
        let applicationSupportPath = applicationSupportPaths[0]
        print(applicationSupportPath)
        
        let cachePaths = NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true)
        let cachePath = cachePaths[0]
        print(cachePath)
        
        // 디렉토리 생성
        let userDir = docPath.appending("/data")
        do {
            try FileManager.default.createDirectory(atPath: applicationSupportPath, withIntermediateDirectories: true, attributes: nil)
            try FileManager.default.createDirectory(atPath: userDir, withIntermediateDirectories: true, attributes: nil)
        }
        catch let error {
            print("디렉토리 생성 실패: \(error.localizedDescription)")
        }
        
        // 디렉토리명 삭제
        do {
            try FileManager.default.removeItem(atPath: userDir)
        }
        catch let error {
            print("디렉토리 삭제 실패: \(error.localizedDescription)")
        }
    }


    

}
















