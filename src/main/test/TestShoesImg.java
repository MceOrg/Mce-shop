import com.mce.shop.dao.ShoesImgDAO;
import com.mce.shop.entity.ShoesImg;
import com.mce.shop.util.MybatisUtil;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import java.util.List;

public class TestShoesImg {
    @Test
    public void testSelect(){
        SqlSession sqlSession = MybatisUtil.getSession();
        ShoesImgDAO mapper = sqlSession.getMapper(ShoesImgDAO.class);
        List<ShoesImg> shoesImg = mapper.queryAllImgByShoesId(1);
        System.out.println(shoesImg);
        MybatisUtil.closeSession();
    }
}
