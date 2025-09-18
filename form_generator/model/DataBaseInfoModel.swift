//
//  DataBaseInfoModel.swift
//  form_generator
//
//  Created by Jerônimo Torres on 16/09/25.
//

import Foundation

struct DataBaseInfoModel: Codable {
    var host: String = ""
    var user: String = ""
    var password: String = ""
    var database: String = ""
}
