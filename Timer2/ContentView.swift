//
//  ContentView.swift
//  Timer2
//
//  Created by 森田晋 on 2021/12/18.
//

import SwiftUI

struct ContentView: View {
    @State var count = 0
    @State var timer:Timer?
    
    var body: some View {
        VStack {
            Text("\(count) 秒")
                .padding()
            Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                //scheduledTimer()メソッドを使用
                timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
                    self.count += 1
                    if count == 5 {
                        timer?.invalidate()
                        count = 0
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
