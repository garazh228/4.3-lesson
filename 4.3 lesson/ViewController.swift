//
//  ViewController.swift
//  4.3 lesson
//
//  Created by adyl CEO on 18/01/2024.
//

import UIKit


class ViewController: UIViewController {

    private lazy var titleLogin: UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.textColor = .black
        label.font = .systemFont(ofSize: 20, weight: .heavy)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var personView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(systemName: "person")?.withConfiguration(UIImage.SymbolConfiguration(weight: .bold))
        view.tintColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var lilTitle: UILabel = {
        let title = UILabel()
        title.text = "Welcome back, Rohit thakur"
        title.textColor = .gray
        title.font = .systemFont(ofSize: 16)
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    private lazy var mainImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "1")
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private lazy var imageLabel: UILabel = {
        let label = UILabel()
        label.text = "Enter Your Mobile Number"
        label.font = .systemFont(ofSize: 20, weight: .heavy)
        label.textColor = UIColor(hex: 0xF2796B)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var tf: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Enter Number"
        tf.backgroundColor = UIColor(hex: 0xF6F6F6)
        tf.borderStyle = .roundedRect
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 8, height: 50))
        tf.leftView = view
        tf.leftViewMode = .always
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    private lazy var tfLabel: UILabel = {
        let label = UILabel()
        label.text = "Change Number ?"
        label.font = .systemFont(ofSize: 14, weight: .regular)
        label.textColor = UIColor(hex: 0x000000)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var loginBtn: UIButton = {
        let btn = UIButton(type: .system)
        btn.layer.cornerRadius = 10
        btn.backgroundColor = UIColor(hex: 0xF2796B)
        btn.addTarget(self, action: #selector(showNextPage), for: .touchUpInside)
        btn.setTitle("Login", for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
        btn.tintColor = .white
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    private lazy var lastLabel: UILabel = {
        let label = UILabel()
        label.text = "You Don’t have an account ? Sign up"
        label.font = .systemFont(ofSize: 14)
        label.textColor = UIColor(hex: 0x000000)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var google: UILabel = {
        let lable = UILabel()
        lable.text = "Google"
        lable.textColor = .black
        lable.font = .systemFont(ofSize: 16)
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupViews()
        setupConstraints()
    }
    
    private func setupViews() {
        view.addSubview(titleLogin)
        view.addSubview(personView)
        view.addSubview(lilTitle)
        view.addSubview(mainImage)
        view.addSubview(imageLabel)
        view.addSubview(tf)
        view.addSubview(tfLabel)
        view.addSubview(loginBtn)
        view.addSubview(lastLabel)
        view.addSubview(google)
    }
    
    private func setupConstraints() {
        let margins = view.layoutMarginsGuide
        
        NSLayoutConstraint.activate([
            
            titleLogin.leadingAnchor.constraint(equalTo: margins.leadingAnchor),
            titleLogin.topAnchor.constraint(equalTo: view.topAnchor, constant: 62),
            
          
            personView.widthAnchor.constraint(equalToConstant: 20),
            personView.heightAnchor.constraint(equalToConstant: 19),
            personView.leadingAnchor.constraint(equalTo: titleLogin.trailingAnchor, constant: 4),
            personView.centerYAnchor.constraint(equalTo: titleLogin.centerYAnchor),
            
            
            lilTitle.leadingAnchor.constraint(equalTo: margins.leadingAnchor),
            lilTitle.topAnchor.constraint(equalTo: titleLogin.bottomAnchor, constant: 5),
            
            
            mainImage.topAnchor.constraint(equalTo: lilTitle.bottomAnchor, constant: 16),
            mainImage.leadingAnchor.constraint(equalTo: margins.leadingAnchor),
            mainImage.trailingAnchor.constraint(equalTo: margins.trailingAnchor),
            mainImage.heightAnchor.constraint(equalToConstant: 280),
            
            
            imageLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageLabel.topAnchor.constraint(equalTo: mainImage.bottomAnchor, constant: 20),
            
            
            tf.leadingAnchor.constraint(equalTo: margins.leadingAnchor),
            tf.trailingAnchor.constraint(equalTo: margins.trailingAnchor),
            tf.topAnchor.constraint(equalTo: imageLabel.bottomAnchor, constant: 16),
            tf.heightAnchor.constraint(equalToConstant: 43),
            
            
            tfLabel.topAnchor.constraint(equalTo: tf.bottomAnchor, constant: 11),
            tfLabel.trailingAnchor.constraint(equalTo: margins.trailingAnchor),
            
         
            loginBtn.leadingAnchor.constraint(equalTo: margins.leadingAnchor),
            loginBtn.trailingAnchor.constraint(equalTo: margins.trailingAnchor),
            loginBtn.topAnchor.constraint(equalTo: tfLabel.bottomAnchor, constant: 35),
            loginBtn.heightAnchor.constraint(equalToConstant: 43),
            
            
            lastLabel.bottomAnchor.constraint(equalTo: margins.bottomAnchor),
            lastLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
           
            google.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            google.bottomAnchor.constraint(equalTo: lastLabel.topAnchor, constant: -8)
        ])
        
    }
    
    @objc func showNextPage(_ sender: UIButton) {
        guard let text = tf.text else {return}
        
        if text.hasPrefix("+996") && text.count == 13 {
            
            let vc2 = SecondViewController()
            navigationController?.pushViewController(vc2, animated: true)
        } else {
            tf.layer.borderColor = UIColor.red.cgColor
            tf.layer.borderWidth = 2
            tf.placeholder = "Please Enter a KGZ Number"
            
        }
    }
}
