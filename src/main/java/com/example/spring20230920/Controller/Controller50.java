package com.example.spring20230920.Controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;

@Controller
@RequestMapping("main50")
public class Controller50 {


    @Autowired
    private DataSource dataSource;

    @GetMapping("sub1")
    public void method1(@RequestParam(value = "pp", defaultValue = "1") Integer page,
                        Model model)throws SQLException {
        String sql = """
                SELECT ProductName name,
                             Price price,
                             CategoryID id
                FROM products
                ORDER BY CategoryID ASC
                LIMIT ?,20
                """;

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);

        List<Map<Integer, Objects>>list = new ArrayList<>();
    }
}




//
////        Statement.setInt(1, (page-1) * 10);
////        Statement.setInt(2, 10);
////        ResultSet resultSet = statement.executeQuery();
//
//        try (connection; statement; resultSet){
//            while (resultSet.next()){
//                String name = resultSet.getString("name");
//                Integer price = resultSet.getInt("price");
//                Integer id = resultSet.getInt("id");
//
////                list.add(Map.of("name",name,"price",price, "id",id));
//            }
//
//        }
//        String sql1 = """
//                SELECT COUNT(*) FROM products
//                """;
//        Connection connection1 = dataSource.getConnection();
//        Statement statement1 = connection1.createStatement();
//        ResultSet resultSet1 = statement1.executeQuery(sql1);
//        int lastPageNumber = 1;
//        try (connection1; statement1; resultSet1){
//            if(resultSet1.next()){
//                int countAll = resultSet1.getInt(1);
//                int lastPageNumber =(countAll-1)/5 + 1 ;
//            }
//
//        }
//    }

