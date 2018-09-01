import com.mce.shop.dao.MyorderDAO;
import com.mce.shop.entity.Myorder;
import com.mce.shop.entity.OrderDetail;
import com.mce.shop.util.MybatisUtil;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import java.util.HashMap;
import java.util.List;

public class testMyorder {
    @Test
    public void testSave() {
        SqlSession sqlSession = MybatisUtil.getSession();
        Myorder order = new Myorder();
        order.setOrderId(1);
        order.setOrderNumber("1000");
        order.setOrderPrice(1099.0);
        MyorderDAO myorderDAO =(MyorderDAO) sqlSession.getMapper(MyorderDAO.class);
        boolean flag = myorderDAO.save(order);
        sqlSession.commit();
        sqlSession.close();
        System.out.println("应该保存"+flag+"了");
    }

    @Test
    public void testSaveDetails() {
        SqlSession sqlSession = MybatisUtil.getSession();
        OrderDetail orderDetail = new OrderDetail();
        orderDetail.setOrderId(1);
        orderDetail.setShoesDetailId(1);
        orderDetail.setQuality(2);
        orderDetail.setOrderShoesColor("白");
        orderDetail.setOrderShoesSize("40");

        MyorderDAO myorderDAO = (MyorderDAO) sqlSession.getMapper(MyorderDAO.class);

        boolean flag = myorderDAO.saveDetails(orderDetail);

        sqlSession.commit();
        sqlSession.close();
        System.out.println("保存"+flag);

    }

    @Test
    public void testQueryAll() {
        SqlSession sqlSession = MybatisUtil.getSession();
        MyorderDAO dao = sqlSession.getMapper(MyorderDAO.class);
        List<Myorder> myorders = dao.queryAll(1);
       // myorders.forEach(System.out::println);
        for (Myorder o:myorders
             ) {
            System.out.println(o);
        }
    }

    @Test
    public void testQueryByShoesName() {
        SqlSession sqlSession = MybatisUtil.getSession();
        MyorderDAO dao = sqlSession.getMapper(MyorderDAO.class);
        List<Myorder> myorders = dao.queryByShoesName("A",1);
        sqlSession.close();
        for (Myorder o:myorders
                ) {
            System.out.println(o);
        }
    }

    @Test
    public void testQueryById() {
        SqlSession sqlSession = MybatisUtil.getSession();
        MyorderDAO dao = sqlSession.getMapper(MyorderDAO.class);
        List<Myorder> myorders = dao.queryById(599,1);
        sqlSession.close();
        for (Myorder o:myorders
                ) {
            System.out.println(o);
        }
    }
}
