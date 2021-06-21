
//switch 문으로 바꾸기.
/*
 a...b //Close Range
 a..<b //half Open Range
 ...b //One sided Range
 */
func loveCalculator(){
    let loveScore = Int.random(in: 0...100)
    
    switch loveScore {
    case 81...100: // 81부터 100까지
        print("You love each other like Knaye lovers Kanye.")
    case 40..<81: //40에서 81미만
        print("You go together like Coke and Mentos")
    case ...40: // 40미만
        print("You go together like Coke and Mentos")
    default: // 그 이외의 범위
        print("error")
    }
    
}

loveCalculator() // 함수 실행

