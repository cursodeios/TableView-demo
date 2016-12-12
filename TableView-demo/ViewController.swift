

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
        
        let nib = UINib(nibName: "PostCell", bundle: nil)
        
        tableView.register(nib, forCellReuseIdentifier: "cell")
        
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
        
        let titleLabel = cell.viewWithTag(1) as! UILabel
        let subtitleLabel = cell.viewWithTag(2) as! UILabel
        
        titleLabel.text = blogPosts[indexPath.row].title
        
        subtitleLabel.text = blogPosts[indexPath.row].subtitle
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }

}

