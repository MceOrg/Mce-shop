import com.mce.shop.dao.ShoesDAO;
import com.mce.shop.entity.Shoes;
import com.mce.shop.util.MybatisUtil;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import java.util.List;

public class ShoesTest {
    @Test
    public void testSelect(){
        SqlSession sqlSession = MybatisUtil.getSession();
        ShoesDAO mapper = sqlSession.getMapper(ShoesDAO.class);
        List<Shoes> shoes = mapper.queryAll();
       // List<Shoes> shoes = mapper.queryByGender((byte) 2);
        // List<Shoes> shoes = mapper.queryByPrice(500f,1500f);
        //List<Shoes> shoes = mapper.queryByCategory(1);
        //List<Shoes> shoes = mapper.queryByName("A")
        //List<Shoes> shoes = mapper.queryBySize(35f);

        System.out.println(shoes);
        MybatisUtil.closeSession();


    }

    @Test
    public void testQueryById() {
        SqlSession sqlSession = MybatisUtil.getSession();
        ShoesDAO dao = sqlSession.getMapper(ShoesDAO.class);
        Shoes shoes = dao.queryById(1);
        sqlSession.close();
        System.out.println(shoes);
    }
}
