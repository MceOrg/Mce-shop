import com.mce.shop.dao.CustLoginDAO;
import com.mce.shop.entity.CustLogin;
import com.mce.shop.entity.Customer;
import com.mce.shop.util.MybatisUtil;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;


import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class CustLoginDaoTest {
    @Test
    public void TestcheckTelnoAndPwd(){
        SqlSession session=MybatisUtil.getSession();
        try {
            CustLoginDAO custLoginDAO=session.getMapper(CustLoginDAO.class);
            Customer customer=custLoginDAO.checkTelnoAndPwd("18806710623","123");
            if(customer!=null){
                System.out.println(customer);
            }else {
                System.out.println("您的账号或密码有误");
            }
        }finally {
            MybatisUtil.closeSession();
        }
    }


    @Test
    public void TestcheckEmailAndPwd(){
        SqlSession session=MybatisUtil.getSession();
        try {
            CustLoginDAO custLoginDAO=session.getMapper(CustLoginDAO.class);
            Customer customer=custLoginDAO.checkEmailAndPwd("2133@qq.com","123");
            if(customer!=null){
                System.out.println(customer);
            }else {
                System.out.println("您的账号或密码有误");
            }
        }finally {
            MybatisUtil.closeSession();
        }
    }

    @Test
    public void Testsave(){
        SqlSession session=MybatisUtil.getSession();
        try {
            CustLogin custLogin=new CustLogin(1,"18806710623",
                    "123",new Date(),"192.168.1.21",0,1);
            CustLoginDAO custLoginDAO=session.getMapper(CustLoginDAO.class);
            Integer row=custLoginDAO.save(custLogin);
            session.commit();
            if(row==1)
                System.out.println("添加成功");
        }finally {
            MybatisUtil.closeSession();
        }
    }


}
