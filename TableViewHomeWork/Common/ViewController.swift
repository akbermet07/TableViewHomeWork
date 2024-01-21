//
//  ViewController.swift
//  TableViewHomeWork
//
//  Created by Акбермет Таалайбек кызы on 21/1/24.
//

import UIKit

class ViewController: UIViewController {
    
    private var userName: UILabel = {
        let view = UILabel()
        view.text = "Akbermet"
        view.font = .systemFont(ofSize: 18, weight: .bold)
        view.textColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var userImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "user")
        view.contentMode = .scaleAspectFit
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var desrLbl: UILabel = {
        let view = UILabel()
        view.text = "Welcome back , Akbermet"
        view.font = .systemFont(ofSize: 14, weight: .regular)
        view.textColor = .lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var someImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "someImage")
        view.contentMode = .scaleAspectFit
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var enterPhoneLbl: UILabel = {
        let view = UILabel()
        view.text = "Enter Your Mobile Number"
        view.font = .systemFont(ofSize: 17, weight: .bold)
        view.textColor = .orange
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var phoneNumberTF: UITextField = {
        let view = UITextField()
        view.placeholder = "Enter your phone number"
        view.font = .systemFont(ofSize: 12, weight: .regular)
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.gray.cgColor
        view.layer.cornerRadius = 12
        view.keyboardType = .numberPad
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var changeNubmerBtn: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("Change Number ?", for: .normal)
        view.setTitleColor(.orange, for: .normal)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var loginBtn: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("Login", for: .normal)
        view.setTitleColor(.white, for: .normal)
        view.backgroundColor = .orange
        view.layer.cornerRadius = 12
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addTarget(self, action: #selector(loginBtnTapped(sender:)), for: .touchUpInside)
        return view
    }()
    
    private var signUpBtn: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("You Don’t have an account ? Sign up", for: .normal)
        view.setTitleColor(.black, for: .normal)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(userName)
        NSLayoutConstraint.activate([
            userName.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            userName.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24)
        ])
        
        view.addSubview(userImage)
        NSLayoutConstraint.activate([
            userImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            userImage.leadingAnchor.constraint(equalTo: userName.trailingAnchor, constant: 3),
            userImage.heightAnchor.constraint(equalToConstant: 20),
            userImage.widthAnchor.constraint(equalToConstant: 20)
        ])
        
        view.addSubview(desrLbl)
        NSLayoutConstraint.activate([
            desrLbl.topAnchor.constraint(equalTo: userImage.bottomAnchor, constant: 5),
            desrLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24)
        ])
        
        view.addSubview(someImage)
        NSLayoutConstraint.activate([
            someImage.topAnchor.constraint(equalTo: desrLbl.bottomAnchor, constant: 40),
            someImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
            someImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60),
            someImage.heightAnchor.constraint(equalToConstant: 200)
        ])
        
        view.addSubview(enterPhoneLbl)
        NSLayoutConstraint.activate([
            enterPhoneLbl.topAnchor.constraint(equalTo: someImage.bottomAnchor, constant: 15),
            enterPhoneLbl.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        view.addSubview(phoneNumberTF)
        NSLayoutConstraint.activate([
            phoneNumberTF.topAnchor.constraint(equalTo: enterPhoneLbl.bottomAnchor, constant: 30),
            phoneNumberTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            phoneNumberTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            phoneNumberTF.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        view.addSubview(changeNubmerBtn)
        NSLayoutConstraint.activate([
            changeNubmerBtn.topAnchor.constraint(equalTo: phoneNumberTF.bottomAnchor, constant: 10),
            changeNubmerBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24)
        ])
        
        view.addSubview(loginBtn)
        NSLayoutConstraint.activate([
            loginBtn.topAnchor.constraint(equalTo: changeNubmerBtn.bottomAnchor, constant: 30),
            loginBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            loginBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            loginBtn.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        view.addSubview(signUpBtn)
        NSLayoutConstraint.activate([
            signUpBtn.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0),
            signUpBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    @objc func loginBtnTapped(sender: UIButton) {
        checkUser()
    }
    
    func checkUser() {
        validateTF(textField: phoneNumberTF,
                   idLabel: enterPhoneLbl,
                   error: "Введите правильный номер",
                   prompt: "Enter your phone number")
        
        if phoneNumberTF.text?.count ?? 0 >= 6 {
            let vc = ContactsViewController()
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    private func validateTF(textField: UITextField, idLabel: UILabel, error: String, prompt: String ) {
        if textField.text?.count ?? 0 < 6 {
            idLabel.text = error
            idLabel.textColor = .red
            textField.layer.borderWidth = 1
            textField.layer.borderColor = UIColor.red.cgColor
        } else {
            idLabel.text = prompt
            idLabel.textColor = .black
            textField.layer.borderWidth = 1
            textField.layer.borderColor = UIColor.white.cgColor
        }
    }
}

