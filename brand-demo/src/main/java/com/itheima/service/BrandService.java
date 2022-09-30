package com.itheima.service;

import com.itheima.mapper.BrandMapper;
import com.itheima.pojo.Brand;
import com.itheima.util.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.List;

public class BrandService {
    //调用BrandMapper.selectAll()
    SqlSessionFactory factory = SqlSessionFactoryUtils.getSqlSessionFactory();


    /**
     * 查询所有
     * @return
     */
    public List<Brand> selectAll() {

//        2.获取SqlSession
        SqlSession sqlSession = factory.openSession();

//        3.获取BrandMapper
        BrandMapper mapper = sqlSession.getMapper(BrandMapper.class);

//        4.调用方法
        List<Brand> brands = mapper.selectAll();

        sqlSession.close();

        return brands;
    }

    /**
     * 添加
     * @param brand
     */
    public void add(Brand brand) {
//        2.获取SqlSession
        SqlSession sqlSession = factory.openSession();
//        3.获取BrandMapper
        BrandMapper mapper = sqlSession.getMapper(BrandMapper.class);
//        4.调用方法//添加到数据库里去了
        mapper.add(brand);
//        提交事务
        sqlSession.commit();
//        释放资源
        sqlSession.close();
    }

    /**
     * 修改
     * ①根据id查询
     * @return
     */
    public Brand selectById(int id) {

//        2.获取SqlSession
        SqlSession sqlSession = factory.openSession();

//        3.获取BrandMapper
        BrandMapper mapper = sqlSession.getMapper(BrandMapper.class);

//        4.调用方法
        Brand brand = mapper.selectById(id);

        sqlSession.close();

        return brand;
    }

    /**
     * 修改
     * ②修改
     * @param brand
     */
    public void update(Brand brand) {
//        2.获取SqlSession
        SqlSession sqlSession = factory.openSession();
//        3.获取BrandMapper
        BrandMapper mapper = sqlSession.getMapper(BrandMapper.class);
//        4.调用方法//添加到数据库里去了
        mapper.update(brand);
//        提交事务
        sqlSession.commit();
//        释放资源
        sqlSession.close();
    }



    /**
     * 删除
     * ①根据id删除
     * ②删除，此为第二步
     * @param id
     */

    public void deleteById(int id) {
//        2.获取SqlSession
        SqlSession sqlSession = factory.openSession();
//        3.获取BrandMapper
        BrandMapper mapper = sqlSession.getMapper(BrandMapper.class);
//        4.调用方法//添加到数据库里去了
        mapper.deleteById(id);

//        提交事务
        sqlSession.commit();
//        释放资源
        sqlSession.close();
    }




}
