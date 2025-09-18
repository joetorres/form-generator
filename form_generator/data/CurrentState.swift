//
//  CurrentState.swift
//  form_generator
//
//  Created by Jerônimo Torres on 17/09/25.
//


class CurrentState {
    static let instance = CurrentState()
    
    private init() {
        print("Creating CurrentState instance...")
    }
    
    var database: DataBaseInfoModel?
}
