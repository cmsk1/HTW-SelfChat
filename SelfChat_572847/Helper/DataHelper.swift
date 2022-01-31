//
//  DataHelper.swift
//  SelfChat_572847
//
//  Created by Constantin Schulte-Kersmecke on 31.01.22.
//

import Foundation

class ReadData: ObservableObject  {
    @Published var users = [Contact]()
    
    init(){
        loadData()
    }
    
    func loadData()  {
        guard let url = Bundle.main.url(forResource: "data", withExtension: "json")
        else {
            print("Json file not found")
            return
        }
        
        let data = try? Data(contentsOf: url)
        let users = try? JSONDecoder().decode([Contact].self, from: data!)
        self.users = users!
        print("file loaded")
    }
    
    func writeData(data: [Contact]) -> Void {
        guard let url = Bundle.main.url(forResource: "data", withExtension: "json")
        else {
            print("Json file not found")
            return
        }
        do {
            let jsonData = try JSONEncoder().encode(data)
            do {
                try jsonData.write(to: url)
            } catch {
                print("Could not write json file")
                return
            }
        } catch {
            print("Could not encode json")
            return
        }
        print("json file written")
        
    }
    
}
