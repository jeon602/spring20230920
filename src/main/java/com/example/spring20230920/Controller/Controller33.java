package com.example.spring20230920.Controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.*;

@Controller
@RequiredArgsConstructor
@RequestMapping("main33")
public class Controller33 {

    @GetMapping("sub1")
    public void method1() {

    }

    @PostMapping("sub2")
    public void method2(String name,
                        Integer age,
                        MultipartFile myfile) throws IOException {
        System.out.println("name = " + name);
        System.out.println("age = " + age);

        if (myfile != null) {
            String fileName = myfile.getOriginalFilename();
            System.out.println("fileName = " + fileName);

            String path = "C:\\Temp\\upload_" + fileName;
            InputStream inputStream = myfile.getInputStream();
            FileOutputStream outputStream = new FileOutputStream(path);

            BufferedInputStream bis = new BufferedInputStream(inputStream);
            BufferedOutputStream bos = new BufferedOutputStream(outputStream);

            try (bis; bos; inputStream; outputStream) {
                byte[] data = new byte[1024];
                int len = 0;

                while ((len = bis.read(data)) != -1) {
                    bos.write(data, 0, len);
                }
                bos.flush();
            }
        }
    }

    @GetMapping("sub3")
    public void method3() {

    }

    // post /main33/sub4
    @PostMapping("sub4")
    public void method4(MultipartFile upload) throws IOException {
        // 업로드한 파일을 C:\\Temp\\ 폴더내에 저장하기
        if (upload != null) {
            String fileName = upload.getOriginalFilename();
            String path = "C:\\Temp\\";

            BufferedInputStream bis = new BufferedInputStream(upload.getInputStream());
            BufferedOutputStream bos = new BufferedOutputStream(new FileOutputStream(path + fileName));
            try (bis; bos) {
                byte[] data = new byte[2048];
                int len = 0;

                while ((len = bis.read(data)) != -1) {
                    bos.write(data, 0, len);
                }
                bos.flush();
            }

        }
    }

    @GetMapping("sub5")
    public void method5() {

    }

    @PostMapping("sub6")
    public void method6(MultipartFile[] files) throws IOException { //클라이언트로부터 받은 파일을 처리하는 메소드 + 'MultipartFile[] files' 파라미터는 여러 파일을 동시에 업로드 할 수 있도록 배열로 받는다.
//        System.out.println("files.length = " + files.length);
        System.out.println("업로드 파일 크기들."); //디버깅 목적으로 ㅁ업로드 된 파일크기 정보를 콘솔에 출력
        for (MultipartFile file : files) { //반복문: 배열 내 각 파일에 대해 반복,
//            System.out.println("file.getSize() = " + file.getSize());

            if (file.getSize() > 0) { //~한다면, 파일의 크기가 0보다 큰지 확인한다. 그러면 업로드 된 파일의 값이 null. or  미선택
                String path = "C:\\Temp\\"; //업로드 된 파일을 저장할 directory 경로
                BufferedInputStream bis = new BufferedInputStream(file.getInputStream());
                BufferedOutputStream bos = new BufferedOutputStream(new FileOutputStream(path + file.getOriginalFilename())); //출력스트림
//              파일 읽기 )(입력스트림의 생성 )
                try (bos; bis) {
                    int len = 0;
                    byte[] data = new byte[2048];

                    while ((len = bis.read(data)) != -1) {
                        bos.write(data, 0, len);
                    }
                    bos.flush();

                }
            }
        }
    }
    @GetMapping ("sub7");
    public void method7() {
    }
    @PostMapping
    public void method8(@RequestParam
