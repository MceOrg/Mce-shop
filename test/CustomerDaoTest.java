import com.mce.shop.dao.CustomerDAO;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import util.MybatisUtil;

public class CustomerDaoTest {
    @Test
    public void TestisValidTelno() {
        SqlSession session = MybatisUtil.getSession();
        try {
            CustomerDAO customerDAO = session.getMapper(CustomerDAO.class);
            Long telno = customerDAO.isValidTelno(18806717623L);
            if (telno == null) {
                System.out.println("该手机未被注册,可以使用");
            } else {
                System.out.println("该手机已被注册");
            }
        } finally {
            MybatisUtil.closeSession();
        }
    }


}
