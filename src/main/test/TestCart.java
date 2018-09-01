import com.mce.shop.dao.CartDAO;
import com.mce.shop.entity.Cart;
import com.mce.shop.entity.ShoesDetail;
import com.mce.shop.util.MybatisUtil;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import java.util.Date;

public class TestCart {

    @Test
    public void testSave(){
        SqlSession sqlSession = MybatisUtil.getSession();
        CartDAO cartDAO = sqlSession.getMapper(CartDAO.class);
        ShoesDetail shoesDetail = new ShoesDetail();
        shoesDetail.setShoesDetailId(1);
        int rows = cartDAO.save(shoesDetail,1);
        sqlSession.commit();
        sqlSession.close();
    }


}
