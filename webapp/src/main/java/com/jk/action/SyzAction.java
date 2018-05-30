package com.jk.action;


import com.jk.pojo.*;
import com.jk.service.SyzService;
import com.jk.util.FileUtil;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.springframework.beans.factory.annotation.Autowired;


import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@Namespace(value="/syz")
@ParentPackage("basePackage")
public class SyzAction extends BaseAction{

    @Autowired
    private SyzService syzService;
    private Integer goodsid;
    private Integer bigTypeid;
    private Integer merchantId;
    private Integer smallTypeid;
    private List list;
    private Goods goods = new  Goods();
    private Brand brand =new Brand();
    private  Merchant Merchant =new Merchant();
    private GoodsSzie size =new GoodsSzie();
    private Integer brandId;
    private String uploadFileFileName;
    private File uploadFile;
    private BigType bigtype = new  BigType();
    private SmallType smallType = new  SmallType();
    private GoodsSzie GoodsSzie = new  GoodsSzie();
    private GoodsAndSize GoodsAndSize = new  GoodsAndSize();
    private String goodsSizeId;



    @Action(value="/queryGoods")
    public void queryGoods(){

        Merchant= (Merchant) ServletActionContext.getRequest().getSession().getAttribute("merchant");
        list = syzService.queryGoods(Merchant.getMerchantId());
        super.writeJson(list);

    }


    @Action(value="/queryBrand")
    public void queryBrand(){
       List<Brand> list = syzService.queryBrand();
        super.writeJson(list);

    }
    @Action(value="/queryGoodsSize")
    public void queryGoodsSize(){
        List list = syzService.queryGoodsSize();
        super.writeJson(list);

    }
    @Action(value="/queryBigType")
    public void queryBigType(){
       List<BigType> list = syzService.queryBigType();
        super.writeJson(list);

    }
    @Action(value="/querySmallType")
    public void querySmallType(){

       List<SmallType> list = syzService.querySmallType(bigTypeid);
        super.writeJson(list);

    }
    //新增商品   + 商品规格中间表
    @Action(value="/addGoods")
    public void addGoods(){
        Merchant= (Merchant) ServletActionContext.getRequest().getSession().getAttribute("merchant");
        goods.setMerchantId(Merchant.getMerchantId());
        syzService.addGoods(goods,goodsSizeId,GoodsAndSize);

        super.writeJson("Success");
     }
    @Action(value="/addBrand")
    public void adBrand(){

        syzService.addBrand(brand);
        super.writeJson("Success");
     }
    @Action(value="/addSize")
    public void addSize(){

        syzService.addSize(size);
        super.writeJson("Success");
     }


    @Action(value="/hxGoods")
    public void  hxGoods(){
        Goods goods = syzService.hxGoods(goodsid);
        super.writeJson(goods);
    }
    @Action(value="/delGoods")
    public void  delGoods(){
        syzService.delGoods(goodsid);
        super.writeJson("delAllSuccess");
    }
    @Action(value="/updatedGoods")
    public void updatedGoods(){
        Merchant= (Merchant) ServletActionContext.getRequest().getSession().getAttribute("merchant");
        goods.setMerchantId(Merchant.getMerchantId());
        syzService.addGoods(goods,goodsSizeId,GoodsAndSize);
        super.writeJson("Success");

    }
    @Action(value="/submitgoods")
    public void submitgoods(){
        syzService.submitgoods(goodsid);
        super.writeJson("Success");

    }
    //上传图片
    @Action("/scwj")
    public void scwj(){
        PrintWriter writer = null;
        try {
            String upLoadFilePath = FileUtil.upLoad(uploadFile, uploadFileFileName, "uploadimg");
            ServletActionContext.getResponse().setCharacterEncoding("utf-8");
            writer = ServletActionContext.getResponse().getWriter();
            writer.write(upLoadFilePath);
        } catch (IOException e) {
            e.printStackTrace();
        }finally{
            if(writer != null){
                writer.close();
            }
        }
    }

    public Integer getGoodsid() {
        return goodsid;
    }

    public void setGoodsid(Integer goodsid) {
        this.goodsid = goodsid;
    }

    public Integer getBigTypeid() {
        return bigTypeid;
    }

    public void setBigTypeid(Integer bigTypeid) {
        this.bigTypeid = bigTypeid;
    }

    public Integer getMerchantId() {
        return merchantId;
    }

    public void setMerchantId(Integer merchantId) {
        this.merchantId = merchantId;
    }

    public Integer getSmallTypeid() {
        return smallTypeid;
    }

    public void setSmallTypeid(Integer smallTypeid) {
        this.smallTypeid = smallTypeid;
    }

    public List getList() {
        return list;
    }

    public void setList(List list) {
        this.list = list;
    }

    public Goods getGoods() {
        return goods;
    }

    public void setGoods(Goods goods) {
        this.goods = goods;
    }

    public Brand getBrand() {
        return brand;
    }

    public void setBrand(Brand brand) {
        this.brand = brand;
    }

    public com.jk.pojo.Merchant getMerchant() {
        return Merchant;
    }

    public void setMerchant(com.jk.pojo.Merchant merchant) {
        Merchant = merchant;
    }

    public com.jk.pojo.GoodsSzie getSize() {
        return size;
    }

    public void setSize(com.jk.pojo.GoodsSzie size) {
        this.size = size;
    }

    public Integer getBrandId() {
        return brandId;
    }

    public void setBrandId(Integer brandId) {
        this.brandId = brandId;
    }

    public String getUploadFileFileName() {
        return uploadFileFileName;
    }

    public void setUploadFileFileName(String uploadFileFileName) {
        this.uploadFileFileName = uploadFileFileName;
    }

    public File getUploadFile() {
        return uploadFile;
    }

    public void setUploadFile(File uploadFile) {
        this.uploadFile = uploadFile;
    }

    public BigType getBigtype() {
        return bigtype;
    }

    public void setBigtype(BigType bigtype) {
        this.bigtype = bigtype;
    }

    public SmallType getSmallType() {
        return smallType;
    }

    public void setSmallType(SmallType smallType) {
        this.smallType = smallType;
    }

    public com.jk.pojo.GoodsSzie getGoodsSzie() {
        return GoodsSzie;
    }

    public void setGoodsSzie(com.jk.pojo.GoodsSzie goodsSzie) {
        GoodsSzie = goodsSzie;
    }

    public com.jk.pojo.GoodsAndSize getGoodsAndSize() {
        return GoodsAndSize;
    }

    public void setGoodsAndSize(com.jk.pojo.GoodsAndSize goodsAndSize) {
        GoodsAndSize = goodsAndSize;
    }

    public String getGoodsSizeId() {
        return goodsSizeId;
    }

    public void setGoodsSizeId(String goodsSizeId) {
        this.goodsSizeId = goodsSizeId;
    }
}
