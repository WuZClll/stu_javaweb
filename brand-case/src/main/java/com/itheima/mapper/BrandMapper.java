package com.itheima.mapper;

import com.itheima.pojo.Brand;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface BrandMapper {

    /**
     * 查询所有
     * @return
     */
    @Select("select * from tb_brand1")
    @ResultMap("brandResultMap")
    List<Brand> selectAll();

    /**
     * 新增品牌
     * 添加
     * @param brand
     */
    @Insert("insert into tb_brand1 values (null,#{brandName},#{companyName},#{ordered},#{description},#{status})")
    @ResultMap("brandResultMap")
    void add(Brand brand);


    /**
     *删除一个
     *自写
     * @param id
     */
    @Delete("delete from tb_brand1 where id = #{id}")
    void deleteById(int id);

    /**
     * 修改
     * 自写
     * @param brand
     */
    @Update("update tb_brand1 set brand_Name = #{brandName}, company_name = #{companyName}, ordered = #{ordered}, description = #{description}, status = #{status} where id = #{id}")
    @ResultMap("brandResultMap")
    void updateById(Brand brand);

    /**
     * 批量删除
     * @param ids
     */
    //sql语句见.xml文件
    void deleteByIds(@Param("ids") int[] ids);//映射为ids 在brandMapper.xml中写sql语句


    /**
     * 分页查询
     * @param begin
     * @param size
     * @return
     */
    @Select("select * from tb_brand1 limit #{begin}, #{size}")
    @ResultMap("brandResultMap")
    List<Brand> selectByPage(@Param("begin") int begin,@Param("size") int size);

    /**
     * 查询总记录数
     * @return
     */
    @Select("select  count(*) from tb_brand1")
    int selectTotalCount();


    /**
     * 分页条件查询
     * @param begin
     * @param size
     * @return
     */
    //这个sql是动态sql用xml编写
    List<Brand> selectByPageAndCondition(@Param("begin") int begin,@Param("size") int size,@Param("brand") Brand brand);

    /**
     * 根据条件查询总记录数
     * @return
     */
    //这个sql是动态sql用xml编写
    int selectTotalCountByCondition(Brand brand);
}
