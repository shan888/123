package com._520it.wms.query;

import lombok.Getter;
import lombok.Setter;

import java.math.BigDecimal;

@Getter
@Setter
public class ProductStockQueryObject extends  QueryObject {
    private String keyword;
    private Long depotId = -1L;
    private Long brandId=-1L;
    private BigDecimal limitNum;
}
