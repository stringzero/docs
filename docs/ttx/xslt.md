 <!-- 定义变量pID -->
 <xsl:variable name="pID" select="shippingContainerDetail/shipmentDetailId" />
 <!-- 显示变量pID -->
<abcde><xsl:value-of select="$pID"/></abcde>
<!-- 关联pID， 出库箱显示出库单明细数据 -->
<erpOrderId><xsl:value-of select="/shipment/details/detail/shipmentDetail[id=$pID]/erpOrderId"/></erpOrderId>