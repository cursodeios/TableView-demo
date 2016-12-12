

import UIKit

struct Post {
    var title: String
    var subtitle: String
}

class ViewController: UIViewController,
UITableViewDelegate,
UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var blogPosts: [Post]!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        blogPosts = [
            Post(title: "iOS Introduction", subtitle: "Learn iOS and Swift"),
            Post(title: "NodeJS Course", subtitle: "Learn Nodejs from scratch"),
            Post(title: "Python for beginners", subtitle: "Learn Python from zero")
        ]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return blogPosts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = blogPosts[indexPath.row].title
        
        cell.detailTextLabel?.text = blogPosts[indexPath.row].subtitle
        
        return cell
    }

}

