import com.mce.shop.dao.ShoesColorDAO;
import com.mce.shop.entity.ShoesColor;
import com.mce.shop.util.MybatisUtil;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import java.util.List;

public class testShoesColorDAO {
    @Test
    public void testQueryAllColorByShoesId() {
        SqlSession sqlSession = MybatisUtil.getSession();
        ShoesColorDAO shoesColorDAO = sqlSession.getMapper(ShoesColorDAO.class);
        List<ShoesColor> shoesColor =  shoesColorDAO.queryAllColorByShoesId(1);
        //System.out.println(shoesColor);
        for (ShoesColor s:shoesColor
             ) {
            System.out.println(s.getShoesColorName());
        }
    }
}
