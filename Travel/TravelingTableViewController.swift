//
//  TravelingTableViewController.swift
//  0711HW
//
//  Created by 서지민 on 7/15/25.
//

import UIKit
import Toast

struct Travel {
    let title: String
    let description: String
    let travelImage: String
    let save: Int
    var like: Bool
}

struct Ad {
    let title: String
}

class TravelingTableViewController: UITableViewController {

    var travel: [Travel] = [
        Travel(title: "하나우마 베이",
               description: "아름다운 자연을 감상할 수 있는 스노쿨링 명소",
               travelImage: "https://images.unsplash.com/photo-1539498508910-091b5e859b1d?q=80&w=3250&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
               save: 6932,
               like: false),
        Travel(title: "쿠알로아 랜치",
               description: "광활한 대자연에서 즐기는 다양하고 재미있는 액티비티",
               travelImage: "https://images.unsplash.com/photo-1709380733305-e65f500ab1ac?q=80&w=3264&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
               save: 5167,
               like: true),
        Travel(title: "알라 모아나 센터",
               description: "하와이 최고의 쇼핑 명소",
               travelImage: "https://images.unsplash.com/photo-1600215754990-6e7946d1e37a?q=80&w=2592&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
               save: 8262,
               like: true),
        Travel(title: "와이키키 비치",
               description: "세계적으로 유명한 하와이 최고의 해변",
               travelImage: "https://images.unsplash.com/photo-1507876466758-bc54f384809c?q=80&w=3309&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
               save: 7892,
               like: true),
        Travel(title: "철도 박물관",
               description: "일본 철도의 역사를 둘러볼 수 있는 박물관",
               travelImage: "https://images.unsplash.com/photo-1562326303-31bb8d0f4873?q=80&w=3264&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
               save: 3,
               like: false),
        Travel(title: "도쿄 디즈니랜드",
               description: "월트 디즈니가 창조한 동화 속 세상",
               travelImage: "https://images.unsplash.com/photo-1545580492-8859ba8323f0?q=80&w=3174&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
               save: 26076,
               like: true),
        Travel(title: "도쿄 타워",
               description: "아름다운 전망을 즐길 수 있는 도쿄의 상징",
               travelImage: "https://images.unsplash.com/photo-1513407030348-c983a97b98d8?q=80&w=3272&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
               save: 37077,
               like: false),
        Travel(title: "동문 재래 시장",
               description: "먹거리와 생활용품을 판매하는, 제주에서 가장 큰 시장",
               travelImage: "https://images.unsplash.com/photo-1501523460185-2aa5d2a0f981?q=80&w=3331&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
               save: 67696,
               like: true),
        Travel(title: "제주 국제공항",
               description: "면세점이 있어 더욱 사랑받는, 제주 여행의 시작과 끝을 함께하는 공항",
               travelImage: "https://images.unsplash.com/photo-1556388158-158ea5ccacbd?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
               save: 18817,
               like: true),
        Travel(title: "서귀포 매일 올레 시장",
               description: "다양한 농수산물, 잡화, 먹거리를 판매하는 재래 시장",
               travelImage: "https://images.unsplash.com/photo-1511018761631-2e3eb1e4c972?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
               save: 45399,
               like: false),
        Travel(title: "성산일출봉",
               description: "유네스코 세계 자연 유산에 등재된, 제주 최고의 일출 명소",
               travelImage: "https://images.unsplash.com/photo-1622209018972-097984086b0b?q=80&w=3279&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
               save: 44507,
               like: true),
        Travel(title: "영등포 캠퍼스",
               description: "Jack님과 함께하는,\n우당탕탕 iOS 개발 성장기!",
               travelImage: "https://images.unsplash.com/photo-1679285516851-4f0cb04a3893?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
               save: 30,
               like: true)
    ]
    
    var advertisement: [Ad] = [
        Ad(title: "하와이 여행을 가고싶다면?\n수업이 있는데 가실 생각은 아니시죠?"),
        Ad(title: "도쿄 여행 예약은?\nXcode로 직접 예약앱을 만들면 되겠네요!"),
        Ad(title: "제주 비행기 최저가! 예약 문의는 취업부터!")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let xib = UINib(nibName: TravelingTableViewCell.identifier, bundle: nil)
        tableView.register(xib, forCellReuseIdentifier: TravelingTableViewCell.identifier)
        
        let xib2 = UINib(nibName: AdvertiseTableViewCell.identifier, bundle: nil)
        tableView.register(xib2, forCellReuseIdentifier: AdvertiseTableViewCell.identifier)
    }
    
    @objc
    func likeButtonTapped(_ sender: UIButton) {
        travel[sender.tag].like.toggle()
        tableView.reloadRows(at: [IndexPath(row: sender.tag + (sender.tag / 3), section: 0)], with: .fade)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return travel.count + advertisement.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if (indexPath.row + 1) % 4 == 0 {
            let adCell = tableView.dequeueReusableCell(withIdentifier: AdvertiseTableViewCell.identifier, for: indexPath) as! AdvertiseTableViewCell
            
            let adIndex = (indexPath.row + 1) / 4 - 1
            adCell.configure(ad: advertisement[adIndex])
            
            return adCell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: TravelingTableViewCell.identifier, for: indexPath) as! TravelingTableViewCell
            
            let travelIndex = indexPath.row - (indexPath.row / 4)
            cell.configure(row: travel[travelIndex])
            
            cell.likeButton.tag = travelIndex
            cell.likeButton.addTarget(self, action: #selector(likeButtonTapped), for: .touchUpInside)
            
            return cell
        }
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if (indexPath.row + 1) % 4 == 0 {
            return 88
        } else {
            return UITableView.automaticDimension
        }
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let sb = UIStoryboard(name: "Travel", bundle: nil)
        
        if (indexPath.row + 1) % 4 == 0 {
            let vc2 = sb.instantiateViewController(withIdentifier: "AdvertiseViewController") as! AdvertiseViewController
            let adIndex = (indexPath.row + 1) / 4 - 1
            vc2.adRow = advertisement[adIndex]
            
            view.makeToast("광고 셀입니다", duration: 2, position: .top)
            
            let nav = UINavigationController(rootViewController: vc2)
            nav.modalPresentationStyle = .fullScreen
            present(nav, animated: true)
            
        } else {
            let vc = sb.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
            let travelIndex = indexPath.row - (indexPath.row / 4)
            vc.travelRow = travel[travelIndex]
            
            navigationController?.pushViewController(vc, animated: true)
        }
        
    }
}
