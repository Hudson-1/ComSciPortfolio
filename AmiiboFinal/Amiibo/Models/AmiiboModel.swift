// https://www.cheapshark.com/api/1.0/deals?storeID=1&upperPrice=15
import Foundation

let AmiiboURL = "https://www.amiiboapi.com/api/amiibo/"
func loadData(){
    let apiURL = URL(string: AmiiboURL)!
    let request = URLRequest(url: apiURL)
    let task = URLSession.shared.dataTask(with: request) { data, response, error in
        do{
            if let data = data {
                let dataString = String(data: data, encoding: .utf8)!
                print("------------")
                print(dataString)
                
                let AmiiboList = try JSONDecoder ().decode([Amiibo].self, from:data)
                print(AmiiboList)
            }
        } catch{
            print(error)
            
        }
        
    }
    task.resume()
}

func loadAmiibo(completion: @escaping (Amiibo) -> Void) {
    let apiURL = URL(string: AmiiboURL)!
    let request = URLRequest(url: apiURL)
    let task = URLSession.shared.dataTask(with: request) { data, response, error in
        do{
            if let data = data {
                let dataString = String(data: data, encoding: .utf8)!
                print("------------")
                print(dataString)
                
                let AmiiboLists = try JSONDecoder ().decode(Amiibo.self, from:data)
                print(AmiiboLists)
                
                completion(AmiiboLists)
                
            }
        } catch{
            print(error)
            
        }
        
    }
    task.resume()
}

