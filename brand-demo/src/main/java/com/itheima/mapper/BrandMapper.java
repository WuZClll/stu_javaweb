package com.itheima.mapper;

import com.itheima.pojo.Brand;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface BrandMapper {
    /**
     * 查询所有
     * @return
     */
    @Select("select * from tb_brand")
    @ResultMap("brandResultMap")/*将字段映射（src/main/resources/com/itheima/mapper/BrandMapper.xml）引入，解决数据库与实体类字段不一致的问题*/
    List<Brand> selectAll();

    /**
     * 添加
     * @param brand
     */
    @Insert("insert into tb_brand values (null, #{brandName}, #{companyName}, #{ordered}, #{description}, #{status})")
    void add(Brand brand);

    /**
     * 修改
     * ①根据id查询
     * @param id
     * @return
     */
    @Select("select * from tb_brand where id = #{id}")
    @ResultMap("brandResultMap")/*将字段映射（src/main/resources/com/itheima/mapper/BrandMapper.xml）引入，解决数据库与实体类字段不一致的问题*/
    Brand selectById(int id);

    /**
     * 修改
     * ②修改
     * @param brand
     */
    @Update("update tb_brand set brand_name = #{brandName}, brand_name = #{brandName}, brand_name = #{brandName}, company_name = #{companyName}, ordered = #{ordered}, description = #{description}, status = #{status} where id = #{id}")
    void update(Brand brand);

    @Delete("delete from tb_brand where id=#{id}")
    @ResultMap("brandResultMap")/*将字段映射（src/main/resources/com/itheima/mapper/BrandMapper.xml）引入，解决数据库与实体类字段不一致的问题*/
    void deleteById(int id);
}
