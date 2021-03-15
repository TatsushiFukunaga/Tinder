//
//  RegisterViewModel.swift
//  Tinder
//
//  Created by Tatsushi Fukunaga on 2021/03/15.
//

import Foundation
import RxSwift

class RegisterViewModel {
    
    private let disposeBag = DisposeBag()
    
    // MARK: - Observable
    var nameTextOutput = PublishSubject<String>()
    var emailTextOutput = PublishSubject<String>()
    var passwordTextOutput = PublishSubject<String>()
    
    // MARK: - Observer
    var nameTextInput: AnyObserver<String> {
        nameTextOutput.asObserver()
    }
    
    var emailTextInput: AnyObserver<String> {
        nameTextOutput.asObserver()
    }
    
    var passwordTextInput: AnyObserver<String> {
        nameTextOutput.asObserver()
    }
    
    init() {
        
        nameTextOutput
            .asObservable()
            .subscribe { text in
                print("name:", text)
            }
            .disposed(by: disposeBag)
        
        emailTextOutput
            .asObservable()
            .subscribe { text in
                print("email:", text)
            }
            .disposed(by: disposeBag)
        
        passwordTextOutput
            .asObservable()
            .subscribe { text in
                print("password:", text)
            }
            .disposed(by: disposeBag)
        
    }
    
    
}
