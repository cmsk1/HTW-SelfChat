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
        
        var url = getDocumentsDirectory().appendingPathComponent("data.json")
        
        // Wenn im Documents Dir noch keine gespeicherte Datei liegt, wird die Standard data.json mit den Vorgaben genommen, sonst die gespeicherten Daten
        if !FileManager.default.fileExists(atPath: url.path) {
            guard let urlBundle = Bundle.main.url(forResource: "data", withExtension: "json")
            else {
                print("Json file not found")
                return
            }
            url = urlBundle
        }

        let data = try? Data(contentsOf: url)
        let users = try? JSONDecoder().decode([Contact].self, from: data!)
        self.users = users!
        print("file loaded")
    }
    
    func writeData(data: [Contact]) -> Void {
        let url = getDocumentsDirectory().appendingPathComponent("data.json")
        do {
            let jsonData = try JSONEncoder().encode(data)
            do {
                try jsonData.write(to: url)
            } catch {
                print("Could not write json file: \(error)")
                return
            }
        } catch {
            print("Could not encode json")
            return
        }
        print("json file written")

    }
    
    func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    
}
