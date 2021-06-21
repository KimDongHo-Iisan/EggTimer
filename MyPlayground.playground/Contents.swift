
//if else문 if문의 조건이 참이면 If 구문을 실행하고, 아니면 else문을 실행해라.
/* loveCalculator 함수를 생성하고, 난수를 loveScore 상수 선언
만약 loveScore가 100이라면,"You love each other like Knaye lovers Kanye."를 출력,
 아니라면,"You'll be forever alone" 출력해라.
 */
func loveCalculator(){
    let loveScore = Int.random(in: 0...100) //0부터 100 범위에서 난수를 생성하는 것을 loveScore로 선언
    
    if loveScore == 100 { // 만약 loveScore가 100이라면,
        print("You love each other like Knaye lovers Kanye.") // 출력
    } else { //아니면
        print("You'll be forever alone") //출력
    }
    
}

loveCalculator() // 함수 실행
