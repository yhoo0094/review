package stream;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class FileTest {

	public static void main(String[] args) {
		
		//폴더생성 
			//createDir();
		
		//파일생성  
			//createFile();
		
		//파일목록 읽기
			//dirList();
			
		//파일 삭제하기
			//fileDelete();
		
		//파일 복사하기
			fileCopy(args[0], args[1]);
	}
	
	//폴더생성
	public static void createDir() {
		//폴더 만들기(하나만 만들고 싶으면 mkdir, 여러개는 mkdirs)
		File dir = new File("d:/img");
		dir.mkdir();
	}
	
	//파일 생성하기
	public static void createFile() {
		File file = new File("d:/img/", "data.txt");
		try {
			file.createNewFile();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	//파일목록 읽기
	public static void dirList() {
		File dir = new File("d:/img");
		File[] list = dir.listFiles();
		
		//파일목록에 대해 작업하기
		for(File file : list) {
			System.out.println("이름: " + file.getName());
			System.out.println("크기: " + file.getTotalSpace() + " " + file.length());
			
		}
	}
	
	//파일 삭제하기
	public static void fileDelete() {
		File file = new File("d:/img/data.txt");
		file.delete();
		System.out.println("삭제완료!");
	}
	
	//파일복사
	public static void fileCopy(String src, String target) {
		try {
			FileInputStream fis = new FileInputStream(src);
			FileOutputStream fos = new FileOutputStream(target);
			
			byte[] readBytes = new byte[100];
			int readCnt = 0;
			while((readCnt = fis.read(readBytes)) != -1) { //read()메소드는 리턴값이 없으면 -1 리턴한다
				fos.write(readBytes,0, readCnt);
			}
			fis.close();
			fos.close();
			System.out.println("파일복제가 완료되었습니다.");
		} catch (Exception e) {
			e.printStackTrace();
		}
				
	}
}
