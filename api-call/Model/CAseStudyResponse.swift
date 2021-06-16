//
//  CAseStudyResponse.swift
//  learn-api-call
//
//  Created by The App Experts on 15/06/2021.
//  Copyright © 2021 TAE. All rights reserved.
//

import Foundation

struct CaseStudyResponse:Decodable {
    
    let caseStudy:[CaseStudy]
    
    enum codingKeys:String, CodingKey {
        case caseStudy = "case_studies"
    }
}

struct CaseStudy:Decodable {
    
}
