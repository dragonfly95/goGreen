package org.kh.camp.camping.api;



	/* Java 샘플 코드 */


	import java.io.InputStreamReader;
	import java.net.HttpURLConnection;
	import java.net.URL;
	import java.net.URLEncoder;
	import java.io.BufferedReader;
	import java.io.IOException;

	public class api {
	    public static void main(String[] args) throws IOException {
	        StringBuilder urlBuilder = new StringBuilder("http://api.data.go.kr/openapi/tn_pubr_public_campg_api"); /*URL*/
	        urlBuilder.append("?" + URLEncoder.encode("ServiceKey","UTF-8") + "=H%2B2tfmOKzyM6dMEUZQFvaj42sQJOoqlxSG5zlb00F%2BMReMmOJt9FUpnRbOuPR8Kn2kNvgr8Qhg%2F%2BepA9iSZNfg%3D%3D"); /*Service Key*/
	        urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("0", "UTF-8")); /*페이지 번호*/
	        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("100", "UTF-8")); /*한 페이지 결과 수*/
	        urlBuilder.append("&" + URLEncoder.encode("type","UTF-8") + "=" + URLEncoder.encode("xml", "UTF-8")); /*XML/JSON 여부*/
	        urlBuilder.append("&" + URLEncoder.encode("adminNo","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*관리번호*/
	        urlBuilder.append("&" + URLEncoder.encode("perDate","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*인허가일자*/
	        urlBuilder.append("&" + URLEncoder.encode("perCancleDate","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*인허가취소일자*/
	        urlBuilder.append("&" + URLEncoder.encode("businessStCd","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*영업상태구분코드*/
	        urlBuilder.append("&" + URLEncoder.encode("closedDate","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*폐업일자*/
	        urlBuilder.append("&" + URLEncoder.encode("tmpClosedDate","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*휴업시작일자*/
	        urlBuilder.append("&" + URLEncoder.encode("reopeningDate","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*재개업일자*/
	        urlBuilder.append("&" + URLEncoder.encode("campgNm","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*야영(캠핑)장명*/
	        urlBuilder.append("&" + URLEncoder.encode("campgSe","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*야영(캠핑)장구분*/
	        urlBuilder.append("&" + URLEncoder.encode("latitude","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*위도*/
	        urlBuilder.append("&" + URLEncoder.encode("longitude","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*경도*/
	        urlBuilder.append("&" + URLEncoder.encode("rdnmadr","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*소재지도로명주소*/
	        urlBuilder.append("&" + URLEncoder.encode("lnmadr","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*소재지지번주소*/
	        urlBuilder.append("&" + URLEncoder.encode("officePhoneNumber","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*야영장전화번호*/
	        urlBuilder.append("&" + URLEncoder.encode("campgUnitSpce","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*야영사이트수*/
	        urlBuilder.append("&" + URLEncoder.encode("plotAr","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*부지면적*/
	        urlBuilder.append("&" + URLEncoder.encode("bildngTotar","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*건축연면적*/
	        urlBuilder.append("&" + URLEncoder.encode("facilityAr","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*시설면적*/
	        urlBuilder.append("&" + URLEncoder.encode("culSpoNm","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*문화체육업종명*/
	        urlBuilder.append("&" + URLEncoder.encode("culSeNm","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*문화사업자구분명*/
	        urlBuilder.append("&" + URLEncoder.encode("localSeNm","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*지역구분명*/
	        urlBuilder.append("&" + URLEncoder.encode("totalFloor","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*총층수*/
	        urlBuilder.append("&" + URLEncoder.encode("environmentNm","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*주변환경명*/
	        urlBuilder.append("&" + URLEncoder.encode("insuAgNm","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*보험기관명*/
	        urlBuilder.append("&" + URLEncoder.encode("bildngPurNm","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*건물용도명*/
	        urlBuilder.append("&" + URLEncoder.encode("uperFloor","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*지상층수*/
	        urlBuilder.append("&" + URLEncoder.encode("underFloor","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*지하층수*/
	        urlBuilder.append("&" + URLEncoder.encode("totalRooms","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*객실수*/
	        urlBuilder.append("&" + URLEncoder.encode("insuStDate","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*보험시작일자*/
	        urlBuilder.append("&" + URLEncoder.encode("insuEndDate","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*보험종료일자*/
	        urlBuilder.append("&" + URLEncoder.encode("dayAcmdCo","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*1일최대수용인원수*/
	        urlBuilder.append("&" + URLEncoder.encode("prkplceCo","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*주차장면수*/
	        urlBuilder.append("&" + URLEncoder.encode("cvntl","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*편의시설*/
	        urlBuilder.append("&" + URLEncoder.encode("safentl","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*안전시설*/
	        urlBuilder.append("&" + URLEncoder.encode("etcty","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*기타부대시설*/
	        urlBuilder.append("&" + URLEncoder.encode("useTime","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*이용시간*/
	        urlBuilder.append("&" + URLEncoder.encode("useCharge","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*이용요금*/
	        urlBuilder.append("&" + URLEncoder.encode("phoneNumber","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*관리기관전화번호*/
	        urlBuilder.append("&" + URLEncoder.encode("institutionNm","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*관리기관명*/
	        urlBuilder.append("&" + URLEncoder.encode("referenceDate","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*데이터기준일자*/
	        urlBuilder.append("&" + URLEncoder.encode("instt_code","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*제공기관코드*/
	        urlBuilder.append("&" + URLEncoder.encode("instt_nm","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*제공기관기관명*/
	        URL url = new URL(urlBuilder.toString());
	        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
	        conn.setRequestMethod("GET");
	        conn.setRequestProperty("Content-type", "application/json");
	        System.out.println("Response code: " + conn.getResponseCode());
	        BufferedReader rd;
	        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
	            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
	        } else {
	            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
	        }
	        StringBuilder sb = new StringBuilder();
	        String line;
	        while ((line = rd.readLine()) != null) {
	            sb.append(line);
	        }
	        rd.close();
	        conn.disconnect();
	        System.out.println(sb.toString());
	    }
	
	

}
