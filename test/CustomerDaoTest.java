import com.mce.shop.dao.CustomerDAO;
import com.mce.shop.entity.Customer;
import com.mce.shop.util.MybatisUtil;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import java.util.Date;

public class CustomerDaoTest {
    @Test
    public void TestisValidTelno() {
        SqlSession session = MybatisUtil.getSession();
        try {
            CustomerDAO customerDAO = session.getMapper(CustomerDAO.class);
            String telno = customerDAO.isValidTelno("18806710623");
            if (telno == null) {
                System.out.println("该手机未被注册,可以使用");
            } else {
                System.out.println("该手机已被注册");
            }
        } finally {
            MybatisUtil.closeSession();
        }
    }
    @Test
    public void TestisValidEmail(){
        SqlSession session = MybatisUtil.getSession();
        try {
            CustomerDAO customerDAO = session.getMapper(CustomerDAO.class);
            String email = customerDAO.isValidEmail("823583560@qq.com");
            if (email == null) {
                System.out.println("该邮箱未被注册,可以使用");
            } else {
                System.out.println("该邮箱已被注册");
            }
        } finally {
            MybatisUtil.closeSession();
        }
    }
    @Test
    public void TestupdatePwd(){
        SqlSession session=MybatisUtil.getSession();
        try {
            CustomerDAO customerDAO=session.getMapper(CustomerDAO.class);
            Customer customer=new Customer(1,"Ivalo","abc",22,"18806710623","823583560@qq.com",new Date(),null,null);
            Integer row=customerDAO.updatePwd(customer);
            session.commit();
            if (row==1)
                System.out.println("修改密码成功!");
        }finally {
            MybatisUtil.closeSession();
        }
    }

    @Test
    public void Testregist(){
        SqlSession session=MybatisUtil.getSession();
        try {
            CustomerDAO customerDAO=session.getMapper(CustomerDAO.class);
            Customer customer=new Customer(1,"Ivalo","123",22,"19907654322","2133@qq.com",new Date(),null,null);
            Integer row=customerDAO.regist(customer);
            session.commit();
            if (row==1)
                System.out.println("注册成功!");
        }finally {
            MybatisUtil.closeSession();
        }
    }

    @Test
    public void TestqueryById(){
        SqlSession session=MybatisUtil.getSession();
        try {
            CustomerDAO customerDAO=session.getMapper(CustomerDAO.class);
            Customer customer=customerDAO.queryById(1);
            System.out.println(customer);
        }finally {
            MybatisUtil.closeSession();
        }
    }


    @Test
    public void Testupdate(){
        SqlSession session=MybatisUtil.getSession();
        try {
            CustomerDAO customerDAO=session.getMapper(CustomerDAO.class);
            Customer customer=new Customer(1,"Ivalo2","123",22,"19907654322","2133@qq.com",new Date(),null,null);
            Integer row=customerDAO.update(customer);
            session.commit();
            if (row==1)
                System.out.println("修改成功!");
        }finally {
            MybatisUtil.closeSession();
        }
    }


}
