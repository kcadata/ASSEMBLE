package kr.board.entity;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@NoArgsConstructor 
@AllArgsConstructor
@Data
@ToString
@JsonIgnoreProperties(ignoreUnknown = true)
public class weatherVO {
	String category;
	String fcstDate;
	String fcstTime;
	String fcstValue;
}
