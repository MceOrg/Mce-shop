import com.mce.shop.dao.ReceiveAddressDAO;
import com.mce.shop.entity.ReceiveAddress;
import com.mce.shop.util.MybatisUtil;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class TestReceiveAddress {

    @Test
    public void testAddress(){
        SqlSession sqlSession = MybatisUtil.getSession();
        ReceiveAddressDAO dao = sqlSession.getMapper(ReceiveAddressDAO.class);
        ReceiveAddress newAddress = new ReceiveAddress();
        newAddress.setAddressId(3);
        newAddress.setAddressProvince("安徽省");
        newAddress.setAddressCity("六安市");
        newAddress.setAddressArea("城区");
        newAddress.setAddressStreet("云露街");
        newAddress.setAddressDetail("皖西学院210栋407");
        newAddress.setAddressPostCode(123333);
        newAddress.setAddressRecipientName("呆呆");
        newAddress.setAddressRecipientTelno(18834562345L);
        newAddress.setIsDefaultAddress(0);
        newAddress.setCustId(1);
        dao.insert(newAddress);
        sqlSession.commit();
        MybatisUtil.closeSession();
    }

    @Test
    public void testDelete(){
        SqlSession sqlSession = MybatisUtil.getSession();
        ReceiveAddressDAO dao = sqlSession.getMapper(ReceiveAddressDAO.class);
        dao.delete(1,2);
        sqlSession.commit();
        MybatisUtil.closeSession();
    }

    @Test
    public void testUpdate(){
        SqlSession sqlSession = MybatisUtil.getSession();
        ReceiveAddressDAO dao = sqlSession.getMapper(ReceiveAddressDAO.class);
        ReceiveAddress newAddress1 = new ReceiveAddress();
        newAddress1.setAddressId(3);
        newAddress1.setAddressProvince("安徽省");
        newAddress1.setAddressCity("六安市");
        newAddress1.setAddressArea("城区");
        newAddress1.setAddressStreet("云露街");
        newAddress1.setAddressDetail("皖西学院210栋407");
        newAddress1.setAddressPostCode(123333);
        newAddress1.setAddressRecipientName("呆呆");
        newAddress1.setAddressRecipientTelno(18834562345L);
        newAddress1.setIsDefaultAddress(0);
        newAddress1.setCustId(1);
        dao.update(newAddress1);
        sqlSession.commit();
        MybatisUtil.closeSession();
    }
    @Test
    public void queryAll(){
        SqlSession sqlSession = MybatisUtil.getSession();
        ReceiveAddressDAO dao = sqlSession.getMapper(ReceiveAddressDAO.class);
        List<ReceiveAddress> receiveAddressList = dao.queryAll(1);
        System.out.println(receiveAddressList);
        MybatisUtil.closeSession();
    }

    @Test
    public void testUpdateDefaultAddress() {
        SqlSession sqlSession = MybatisUtil.getSession();
        ReceiveAddressDAO dao = sqlSession.getMapper(ReceiveAddressDAO.class);
        int a = dao.updateDefaultAddress(1, 1);
        sqlSession.commit();
        MybatisUtil.closeSession();
    }
}
