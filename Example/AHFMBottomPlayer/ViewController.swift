//
//  ViewController.swift
//  AHFMBottomPlayer
//
//  Created by ivsall2012 on 08/15/2017.
//  Copyright (c) 2017 ivsall2012. All rights reserved.
//

import UIKit

import AHServiceRouter
import AHFMDataCenter
import AHFMNetworking
import AHFMDataTransformers
import SwiftyJSON

import AHAudioPlayer

import AHFMEpisodeListVCManager
import AHFMAudioPlayerManager
import AHFMAudioPlayerVCManager
import AHFMBottomPlayerManager


import AHFMAudioPlayerVCServices
import AHFMBottomPlayerServices


class ViewController: UIViewController {
    var flag = true
    var networking = AHFMNetworking()
    var ep: AHFMEpisode?
    override func viewDidLoad() {
        super.viewDidLoad()
        AHFMEpisodeListVCManager.activate()
        AHFMAudioPlayerManager.activate()
        AHFMAudioPlayerVCManager.activate()
        AHFMBottomPlayerManager.activate()
        
        
//        if let ep = AHFMEpisode.query(byPrimaryKey: 22700), let epInfo = AHFMEpisodeInfo.query(byPrimaryKey: 22700) {
//            var url: URL?
//            
//            if epInfo.localFilePath != nil {
//                url = URL(fileURLWithPath: epInfo.localFilePath!)
//            }else{
//                url = URL(string: ep.audioURL!)
//            }
//            var toTime: TimeInterval? = nil
//            if let lastPlayedTime = epInfo.lastPlayedTime{
//                toTime = lastPlayedTime
//            }
//            AHAudioPlayerManager.shared.play(trackId: ep.id, trackURL: url!, toTime: toTime)
//        }else{
//            networking.episode(byEpisodeId: 22700) { (data, _) in
//                if let data = data {
//                    let jsonEpisode = JSON(data)
//                    if let episodeDict = AHFMEpisodeTransform.jsonToEpisode(jsonEpisode) {
//                        let ep = AHFMEpisode(with: episodeDict)
//                        self.ep = ep
//                        let url = URL(string: ep.audioURL!)
//                        AHAudioPlayerManager.shared.play(trackId: ep.id, trackURL: url!)
//                    }
//                }
//            }
//        }
        
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
//        DispatchQueue.main.asyncAfter(deadline: .now() + 5) { 
//            let dict: [String: Any] = [AHFMBottomPlayerServices.keyShowPlayer: true, AHFMBottomPlayerServices.keyParentVC: self]
//            AHServiceRouter.doTask(AHFMBottomPlayerServices.service, taskName: AHFMBottomPlayerServices.taskDisplayPlayer, userInfo: dict, completion: nil)
//        }
        
        let dict: [String: Any] = [AHFMBottomPlayerServices.keyShowPlayer: true, AHFMBottomPlayerServices.keyParentVC: self]
        AHServiceRouter.doTask(AHFMBottomPlayerServices.service, taskName: AHFMBottomPlayerServices.taskDisplayPlayer, userInfo: dict, completion: nil)
    }
    

}

