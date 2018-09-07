import com.mce.shop.dao.CategoryDAO;
import com.mce.shop.entity.Category;
import com.mce.shop.util.MybatisUtil;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import java.util.ArrayList;
import java.util.List;

public class CategoryDaoTest {
    @Test
    public void TestqueryAll(){
        SqlSession session=MybatisUtil.getSession();
        try {
            CategoryDAO categoryDAO=session.getMapper(CategoryDAO.class);
            List<Category> categories=new ArrayList<Category>();
            categories=categoryDAO.queryAll();
            System.out.println(categories);

        }finally {
            MybatisUtil.closeSession();
        }
    }
}
