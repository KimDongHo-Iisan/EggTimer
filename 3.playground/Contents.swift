//옵셔널 정리

var playerName: String = nil // 변수에는 무조건 값이 들어가야 에러가 나지않는다.
//하지만 이렇게 빈 값이 있어야 할때가 있다 ex) 유저가 닉네임을 아직 만들지 않았을때

//이런 경우에 사용하는 것이 옵셔널

var playerName1: String? = nil // 이렇게 옵셔널로 값이 있을수도 없을수도 있다는 것을 명시해준다. 그러면 nil값을 초기값으로 사용할수 있다.

playerName1 = "heoo" 
print(playerName1) // 출력하면 옵셔널이 앞에 붙은 채로 값이 출력된다.
//이를 없애기 위해서는
print(playerName1!)//!을 붙여주면 컴퓨터에게 이 값은 널값이 아닌 값이 있다는 것을 확신시켜주는 것이다.

playerName1 = nil // 다시 nil값을 주고

//만약 이름이 nil값이 아니라면 출력해라
if playerName1 != nil {
    print(playerName1)
}
//이런식으로 만들어주면, 다시 nil값을 줬을때 에러가 나지 않도록 해줄수 있다.
