package 테이블;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class 사원01 {
    private DBConnectionMgr a1 = null;
    
    public 사원01() {
        a1 = DBConnectionMgr.getInstance();
    }
    
    public ArrayList<Bean> getList() {
        ArrayList<Bean> alist = new ArrayList<Bean>();
        Connection con = null;
        Statement st = null;
        ResultSet rs = null;
        
        try {
            con = a1.getConnection();
            st = con.createStatement();
            rs = st.executeQuery("select * from employee");
            
            while (rs.next()) {
                Bean bean = new Bean();
                bean.setEmp_id(rs.getString("emp_id"));
                bean.setEmp_name(rs.getString("emp_name"));
                bean.setEmail(rs.getString("email"));
                bean.setPhone(rs.getString("phone"));
                bean.setDept_code(rs.getString("dept_code"));
                bean.setSalary(rs.getString("salary"));
                alist.add(bean);    
            }                        
        } catch (Exception e) {            
            e.printStackTrace();
        } finally {
            // 자원 해제 추가
            if (rs != null) try { rs.close(); } catch (Exception e) { e.printStackTrace(); }
            if (st != null) try { st.close(); } catch (Exception e) { e.printStackTrace(); }
            if (con != null) try { con.close(); } catch (Exception e) { e.printStackTrace(); }
        }
        return alist;
    }
}

