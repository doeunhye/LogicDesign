# Lab 10

## 실습 내용

### **ModelSim 사용하여 리모콘 송신 동작원리 파악**

#### **module nco**

: 32bit 신호를 받아서 1Hz 클락 신호를 만드는 모듈. 즉 클락의 Hz를 조절해줌.

#### **module	fnd_dec**

:0~9의 값을 갖는 4bit 입력 신호를 받아 7bit의 segment값으로 출력

#### **module	double_fig_sep**

: 0~59의 값을 갖는 6bit 입력 신호를 받아 십의 자리 숫자와 일의 자리 수를 각각 4bit로 출력

####**module	led_disp**

:6개의 7segment와 6개 점을 만든 클락 신호에 따라 디스플레이에 출력

####**module	ir_rx**

:리모콘으로 부터 적외선 반전된 신호를 받아 32bit의 데이터를 출력시킴. 
IDLECODE : 신호를 받기 전 상태를 나타냄
LEADCODE : 전원을 넣으면LEADERCODE가 들어오는지 알 수 있고, 들어오면 clk_h와 clk_l는 각각 할당된 값을 갖게됨.
DATACODE : 32개의 데이터가 들어오면 DATACODE로 넘겨줌.
COMPLETECODE : 32개의 데이터가 완성되면, 다시 IDLECODE로 넘어가도록 함.

####**module	top**

:위에 모듈들을 적절하게 연결 짓어서 하나의 모듈로 만듬.

### FPGA 실습 (팀)

:  IR리모컨을 눌렀을 때, 반전된 신호를 32bit의 데이터로 출력함. 그리고 6개의 LED에 0~9 와 A~F(10~15)까지의 숫자를 두개의 LED씩 짝지어 표현. 그 숫자를 리모컨으로 조정 가능.

**Top Module 의 DUT/TestBench Code 및 Waveform 검증**

https://github.com/doeunhye/LogicDesign/tree/master/practice9

### **결과(3개- wave 사진, FPGA동작 사진)**

`Please fill up your source`
![](https://github.com/doeunhye/LogicDesign/blob/master/practice9/FPGA%20%EC%8B%A4%ED%96%89%20%EC%82%AC%EC%A7%84.jpg)
![](https://github.com/doeunhye/LogicDesign/blob/master/practice9/%EC%BA%A1%EC%B2%98.PNG)
wave사진을 보면 clk_h에 9000ms가 들어온 후에 clk_l에 4.5ms가 들어 는 것을 알 수 있음.

<!--stackedit_data:
eyJoaXN0b3J5IjpbLTIxMzA1NDQ4XX0=
-->
