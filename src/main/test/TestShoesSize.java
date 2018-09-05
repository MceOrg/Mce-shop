import com.mce.shop.dao.ShoesSizeDAO;
import com.mce.shop.entity.ShoesSize;
import com.mce.shop.util.MybatisUtil;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import java.util.List;

public class TestShoesSize {
    @Test
    public void testSelect(){
        SqlSession sqlSession = MybatisUtil.getSession();
        ShoesSizeDAO mapper =sqlSession.getMapper(ShoesSizeDAO.class);
        List<ShoesSize> shoesSizes =mapper.queryAllSizeByShoesId(1);
        System.out.println(shoesSizes);
        MybatisUtil.closeSession();
    }
}
