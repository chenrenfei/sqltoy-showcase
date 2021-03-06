/**
 *@Generated by sagacity-quickvo 4.15
 */
package com.sqltoy.quickstart.vo;

import org.sagacity.sqltoy.config.annotation.SqlToyEntity;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;
import com.sqltoy.quickstart.vo.base.AbstractDeviceOrderVO;

/**
 * @project sqltoy-quickstart
 * @author zhongxuchen
 * @version 1.0.0
 * Table: sqltoy_device_order,Remark:硬件购销定单表(演示有规则单号) 	
 */
@SqlToyEntity
public class DeviceOrderVO extends AbstractDeviceOrderVO {	
	/**
	 * 
	 */
	private static final long serialVersionUID = 5720676300522791730L;
	
	/** default constructor */
	public DeviceOrderVO() {
		super();
	}
	/*---begin-constructor-area---don't-update-this-area--*/
	/** pk constructor */
	public DeviceOrderVO(String orderId)
	{
		this.orderId=orderId;
	}

	/** minimal constructor */
	public DeviceOrderVO(String orderId,String deviceType,String psType,LocalDate transDate,Integer status,String createBy,LocalDateTime createTime,String updateBy,LocalDateTime updateTime)
	{
		this.orderId=orderId;
		this.deviceType=deviceType;
		this.psType=psType;
		this.transDate=transDate;
		this.status=status;
		this.createBy=createBy;
		this.createTime=createTime;
		this.updateBy=updateBy;
		this.updateTime=updateTime;
	}

	/** full constructor */
	public DeviceOrderVO(String orderId,String deviceType,String psType,BigDecimal totalCnt,BigDecimal totalAmt,String buyer,String saler,LocalDate transDate,LocalDate deliveryTerm,String staffId,String organId,Integer status,String createBy,LocalDateTime createTime,String updateBy,LocalDateTime updateTime)
	{
		this.orderId=orderId;
		this.deviceType=deviceType;
		this.psType=psType;
		this.totalCnt=totalCnt;
		this.totalAmt=totalAmt;
		this.buyer=buyer;
		this.saler=saler;
		this.transDate=transDate;
		this.deliveryTerm=deliveryTerm;
		this.staffId=staffId;
		this.organId=organId;
		this.status=status;
		this.createBy=createBy;
		this.createTime=createTime;
		this.updateBy=updateBy;
		this.updateTime=updateTime;
	}

	/*---end-constructor-area---don't-update-this-area--*/
	/**
     * @todo vo columns to String
     */
    @Override
	public String toString() {
		return super.toString();
	}
	
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#clone()
	 */
	@Override
	public DeviceOrderVO clone() {
		try {
			return (DeviceOrderVO) super.clone();
		} catch (CloneNotSupportedException e) {
			e.printStackTrace();
		}
		return null;
	}
	
}
