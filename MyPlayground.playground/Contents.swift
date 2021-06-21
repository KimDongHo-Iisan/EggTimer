

/* loveCalculator 함수를 생성하고, 난수를 loveScore 상수 선언
 만약 loveScore가 80보다 큰 값이라면,"You love each other like Knaye lovers Kanye."를 출력,
 40보다 크고 80보다 작은 값이라면, "You go together like Coke and Mentos"
 40보다 작다면, "You'll be forever alone"
 
 */
func loveCalculator(){
    let loveScore = Int.random(in: 0...100) //0부터 100 범위에서 난수를 생성하는 것을 loveScore로 선언
    
    if loveScore > 80 { // 만약 loveScore가 80보다 큰 값이라면,
        print("You love each other like Knaye lovers Kanye.")
    } else if loveScore > 40 { // 만약 40보다 크다면, -> 80보다 작고 40보다 큰 값
        print("You go together like Coke and Mentos")
    } else { //그 이외의 조건 -> 40보다 작다.
        print("You'll be forever alone")
    }
    
}

loveCalculator() // 함수 실행

