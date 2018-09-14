package com.mce.shop.controller;

import com.mce.shop.entity.Shoes;
import com.mce.shop.service.ShoesService;
import com.mce.shop.service.impl.ShoesServiceImpl;
import com.mce.shop.util.PageModel;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class GetAllShoesByPage extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pageStr = request.getParameter("page");
        Integer pageCode = null; // 当前页码
        //1.获得查询页码
        if(pageStr == null){
            pageCode = 1;
        }else{
            pageCode = Integer.parseInt(pageStr);
        }

        //2.获得总记录条数
        ShoesService service = new ShoesServiceImpl();
        Integer totalCount = service.getCount();

        // 3.封装对象
        PageModel page = new PageModel<Shoes>();
        page.setCurrentPageCode(pageCode); // 当前页码
        page.setTotalRecord(totalCount); // 总记录数
        // 总页数
        page.setTotalPages(totalCount%page.getPageSize()==0 ? (totalCount/page.getPageSize()):(totalCount/page.getPageSize())+1);
        // 从第几条开始
        page.setStartRecord((pageCode-1)*page.getPageSize());

        System.out.println("page = "+page);
        PageModel pageModel = service.getAllByPage(page);
        if(pageModel.getModelList()==null){
            request.setAttribute("msg","暂无鞋子数据");
        }else{
            request.setAttribute("pageModel",pageModel);
        }

        request.getRequestDispatcher("/showAllShoes.jsp").forward(request,response);


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req,resp);
    }
}
