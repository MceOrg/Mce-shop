import com.mce.shop.dao.CartDAO;
import com.mce.shop.entity.ShoesDetail;
import com.mce.shop.util.MybatisUtil;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import java.util.List;

public class TestCart {

    @Test
    public void testSave(){
        SqlSession sqlSession = MybatisUtil.getSession();
        CartDAO cartDAO = sqlSession.getMapper(CartDAO.class);
        ShoesDetail shoesDetail = new ShoesDetail();
        shoesDetail.setShoesDetailId(1);
        int rows = cartDAO.save(shoesDetail,1);
        System.out.println(rows);
        sqlSession.commit();
        sqlSession.close();
    }

    @Test
    public void testDelete(){
        SqlSession sqlSession = MybatisUtil.getSession();
        CartDAO cartDAO = sqlSession.getMapper(CartDAO.class);
       /* ShoesDetail shoesDetail = new ShoesDetail();
        shoesDetail.setShoesColorId(1);*/
        int rows = cartDAO.delete(1,1);
        System.out.println(rows);
        sqlSession.commit();
        sqlSession.close();
    }

    @Test
    public void testUpdateCount(){
        SqlSession sqlSession = MybatisUtil.getSession();
        CartDAO cartDAO = sqlSession.getMapper(CartDAO.class);
        int rows = cartDAO.updateCount(1,1,2);
        System.out.println(rows);
        sqlSession.commit();
        sqlSession.close();
    }

    @Test
    public void testQueryAll(){
        SqlSession sqlSession = MybatisUtil.getSession();
        CartDAO cartDAO = sqlSession.getMapper(CartDAO.class);
        List<ShoesDetail> shoesDetailList = cartDAO.queryAll(1);
        System.out.println(shoesDetailList);
        sqlSession.commit();
        sqlSession.close();
    }


}
