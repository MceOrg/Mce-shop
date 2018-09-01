import com.mce.shop.dao.MyorderDAO;
import com.mce.shop.entity.Myorder;
import com.mce.shop.entity.OrderDetail;
import com.mce.shop.util.MybatisUtil;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

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
        orderDetail.setShoesDetailId(null);
        orderDetail.setQuality(2);
        orderDetail.setOrderShoesColor("白");
        orderDetail.setOrderShoesSize("40");

    }
}
