//
//  PhotoSearchAssembly.swift
//  FlickrViperTest
//
//  Created by Timothy Barnard on 04/06/2017.
//  Copyright © 2017 Timothy Barnard. All rights reserved.
//

import Foundation


class PhotoSearchAssembly {
    
    static let sharedInstance = PhotoSearchAssembly()
    
    func configure(_ viewController: PhotoViewController) {
        
        let APIDataManager = FlickrDataManager()
        let interactor = PhotoSearchInteractor()
        let presenter = PhotoSearchPresenter()
        let routing = PhotoSearchRouting()
        
        routing.viewController = viewController
        presenter.router = routing
        viewController.presenter = presenter
        presenter.view = viewController
        interactor.presenter = presenter
        presenter.interactor = interactor
        interactor.APIDataManager = APIDataManager
        
    }
}
