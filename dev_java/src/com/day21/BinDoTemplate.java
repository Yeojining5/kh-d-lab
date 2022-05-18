package com.day21;
// 0 부터 9사이의 임의의 수를 100개를 채번하여 한 줄에 10개씩
// 출력하고 그 숫자의 빈도수를 계산하여 출력하시오

import java.util.Random;

public class BinDoTemplate {
	public BinDoTemplate() {
		int nanSus[] = new int[100];
		int pCount[] = new int[10];
		int size = 0;
		initArray(nanSus, size);
	}

	// 배열의 초기화
	void initArray(int nanSus[], int size) {
		Random r = new Random ();
		for(int i=0;i<nanSus.length;i++) {
			nanSus[i] = r.nextInt(10);
			System.out.print(nanSus[i]);
			for(int j=0;j<nanSus.length;j++) {
				if(nanSus[j]==j) {
					size += 1;				
				}
			}
		}
		System.out.print("size"+size);
	}

	// 빈도 검사 nanSus에 들어 있는 숫자의 빈도를 pCount에 저장함
	void numberCount(int nanSus[], int size, int pCount[]) {
		// insert here

	}

	// 배열 출력 한 줄에 10개씩 출력하고 줄바꿈 하기
	void print10PerLine(int nanSus[], int size) {
		System.out.printf("원본 : 	");
		for (int i = 0; i < size; i++) {
			System.out.printf("%3d", nanSus[i]);
			if (i % 10 == 9)
				System.out.printf("\n	");
		}
	}

	// 빈도 출력 빈도 배열과 인덱스를 함께 출력
	void printResult(int pCount[], int size) {
		// insert here

	}

	public static void main(String[] args) {
		new BinDoTemplate();
		
		
	}

}