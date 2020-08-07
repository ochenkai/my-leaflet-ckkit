<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.*"  pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh" xmlns:th="http://www.thymeleaf.org">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <script src="http://libs.baidu.com/jquery/1.9.0/jquery.js" type="text/javascript"></script>
    <link href="https://cdn.bootcdn.net/ajax/libs/bootstrap-material-design/4.0.2/bootstrap-material-design.min.css"
      rel="stylesheet">
    <style type="text/css">
      body {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
      }

      .content {
        background-image: linear-gradient(0deg, #E7ECFA 0%, #E4EBFF 97%);
        position: relative;
        width: 100%;
        height: 100%;
      }

      .header {
        max-width: 1200px;
        margin-left: auto;
        margin-right: auto;
        padding: 0;
      }

      .secondary_navigation_box {
        height: 79px;
        line-height: 79px;
        margin: 0 auto;
        text-align: center;
        width: 100%;
        position: relative;
        padding: 0;
        background: rgba(255, 255, 255, 0.60);
      }

      .secondary_navigation_list {
        cursor: pointer;
        position: relative;
        padding: 0;
        display: inline-block;
        height: 79px;
        text-align: center;
      }

      .secondary_nav_box {
        height: 79px;
        float: left;
        color: #383E63;
        text-align: center;
        font-size: 16px;
      }

      .secondary_nav_add {
        border-bottom: 4px solid #C7000B !important;
        font-size: 18px !important;
        color: #333333 !important;
      }

      .secondary_li {
        margin-right: 40px;
        margin-left: 40px;
        display: inline-block;
      }

      .section {
        position: relative;
        width: 100%;
        height: auto;
        display: block;
        max-width: 1200px;
        margin-left: auto;
        margin-right: auto;
        margin-top: 20px;
        padding: 15px;
        background-color: #fff;
      }

      .body-picture,
      .body-folder,
      .body-video {
        height: 540px;
        margin-right: -15px;
        margin-left: -15px;
      }
      .body-folder {
        height: 610px;
        margin-right: -15px;
        margin-left: -15px;
      }

      .body-picture {
        display: block;
      }

      .body-folder,
      .body-video {
        display: none;
      }

      .picture_left {
        position: relative;
        min-height: 1px;
        padding-right: 15px;
        padding-left: 15px;
        float: left;
      }

      .picture_max_border {
        overflow: hidden;
        position: relative;
        text-align: center;
        min-height: 540px;
        display: inline-block;
        width: 100%;
      }

      .picture_icon {
        height: 540px;
        width: 100%;
        position: relative;
        overflow: auto;
      }

      .picture_right {
        position: relative;
        min-height: 540px;
        padding-left: 0;
        padding-right: 0;
        float: left;
        width: 100%;
      }

      .identify_result {
        position: relative;
        width: 100%;
        margin: 0;
        padding: 0;
        display: inline-block;
      }

      .identify_result_list {
        position: relative;
        width: 100%;
        margin: 0;
        padding: 0;
        display: inline-block;
        min-height: 540px;
      }

      .result_title {
        line-height: 30px;
        font-size: 16px;
        color: #383E63;
        position: relative;
        height: 30px;
      }

      .row_ro {
        margin-right: 0;
        margin-left: -15px;
      }

      .identify_result_ciy {
        margin-top: 11.6px;
        width: 50%;
        display: inline-block;
        padding-left: 15px;
        padding-right: 0px;
      }

      .ciy_box {
        background: #F1F3FF;
        padding: 0 15px 0 15px;
        font-size: 14px;
        height: 36.5px;
        line-height: 36.5px;
      }

      .ciy_box_desc {
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
        display: inline-block;
        font-size: 14px;
        height: 36.5px;
        line-height: 36.5px;
        width: 50%;
        float: left;
        padding-left: 10px;
      }

      .ciy_box span {
        display: inline-block;
        color: #3472FF;
        font-size: 14px;
        height: 36.5px;
        line-height: 36.5px;
        text-align: right;
        width: 50%;
        padding-right: 10px;
      }

      .identify_result_box3 {
        max-height: 300px;
        overflow-x: hidden;
        overflow-y: auto;
      }

      .identify_result_box3::-webkit-scrollbar {
        /*滚动条整体样式*/
        width: 10px;
        /*高宽分别对应横竖滚动条的尺寸*/
        height: 1px;
      }

      .identify_result_box3::-webkit-scrollbar-thumb {
        /*滚动条里面小方块*/
        border-radius: 10px;
        -webkit-box-shadow: inset 0 0 5px rgba(0, 0, 0, 0.2);
        background: #535353;
      }

      .identify_result_box3::-webkit-scrollbar-track {
        /*滚动条里面轨道*/
        -webkit-box-shadow: inset 0 0 5px rgba(0, 0, 0, 0.2);
        border-radius: 10px;
        background: #EDEDED;
      }
      .local_upload {
        margin-top: 20px;
        width: 100%;
        color: #ffffff;
        height: 40px;
        line-height: 40px;
        display: inline-block;
        text-align: center;
        border: 0;
        border-radius: 2px;
        background: -webkit-gradient(linear, left top, right top, from(#24A6FF), to(#6840FF));
        background: linear-gradient(to right, #24A6FF, #6840FF);
      }
      .local_upload_file {
        width: 100%;
        position: absolute;
        top: 0;
        left: 0;
        height: 50%;
        opacity: 0;
        font-size: 0;
        -moz-opacity: 0;
        filter: alpha(opacity=00);
        cursor: pointer;
      }
      .select-component {
        display: inline-block;
        width: 300px;
        position: relative;
        vertical-align: middle;
        padding: 0;
        overflow: hidden;
        background-color: #fff;
        color: #555;
        border: 1px solid #aaa;
        text-shadow: none;
        border-radius: 4px;
        transition: box-shadow 0.25s ease;
        z-index: 2;
      }

      .select-component:hover {
        box-shadow: 0 1px 4px rgba(0, 0, 0, 0.15);
      }

      .select-component:before {
        content: "";
        position: absolute;
        width: 0;
        height: 0;
        border: 7px solid transparent;
        border-top-color: #ccc;
        top: 14px;
        right: 10px;
        cursor: pointer;
        z-index: -2;
      }
      .select-component select {
        cursor: pointer;
        padding: 7px;
        width: 100%;
        border: none;
        background: transparent;
        background-image: none;
        -webkit-appearance: none;
        -moz-appearance: none;
      }

      .select-component select:focus {
        outline: none;
      }
      .category-box-list {
        line-height: 50px;
        margin: 0 auto;
        text-align: left;
        width: 100%;
        position: relative;
        padding: 0;
        background: rgba(255, 255, 255, 0.60);
      }
      .out-box {
        display: inline-block;
        padding-left: 15px;
        padding-right: 0px;
      }
      .out-box-area {
        height: 36.5px;
        line-height: 36.5px;
        padding: 0 22px;
        border: 1px solid #FFFFFF;
        border-radius: 5px;
        background-color: #E4EBFF;
        color: #333333;
      }
      .out-box-active {
        background-color: #24A6FF;
        color: #FFFFFF;
      }
      #upload {
        position: absolute;
        bottom: 5px;
      }
      .loadingBox {
        width: 100%;
        height: 100%;
        position: absolute;
        z-index: 9;
        overflow: hidden;
      }
      .loadan {
        -ms-animation: saomiao 1.5s ease-out infinite;
        -moz-animation: saomiao 1.5s ease-out infinite;
        -webkit-animation: saomiao 1.5s ease-out infinite;
        -o-animation: saomiao 1.5s ease-out infinite;
        animation: saomiao 1.5s ease-out infinite;
      }
      .loading {
        width: 100%;
        height: 100%;
        position: absolute;
        background-image: url("./page/wangge.png");
        background-size: 100% 100%;
        border-right: 3px solid #4f51f2;
        opacity: 0.5;
      }
      @-webkit-keyframes saomiao {
        0% {
            /* width: 90%; */

            -webkit-transform: translate3d(-325px, 0, 0);
            -ms-transform: translate3d(-325px, 0, 0);
            transform: translate3d(-325px, 0, 0);

        }
        100% {
            /* width: 0; */
            /* transform:scaleX(0) */
            -ms-transform: translate3d(325px, 0, 0);
            -webkit-transform: translate3d(325px, 0, 0);
            transform: translate3d(325px, 0, 0);
        }
      }

      @keyframes saomiao {
        0% {
            /* width: 90%; */

            -webkit-transform: translate3d(-325px, 0, 0);
            -ms-transform: translate3d(325px, 0, 0);
            transform: translate3d(-325px, 0, 0);

        }
        100% {
            /* width: 0; */
            /* transform:scaleX(0) */
            -webkit-transform: translate3d(325px, 0, 0);
            transform: translate3d(325px, 0, 0);
        }
      }
      .bottom-images-list {
        height: 120px;
        overflow-y: hidden;
        overflow-x: auto;
        flex-wrap: nowrap;
        position: relative;
      }
      .bottom-image-item {
        overflow: hidden;
      }
      .bottom-image-item img {
        height: 100%;
        margin: 0 auto;
        border: 1px solid #E4EBFF;
      }
      .bottom-images-button {
        width: 40px;
        height: 40px;
        line-height: 40px;
        font-size: 30px;
        font-weight: bold;
        background-color: #E4EBFF;
        color: #333;
        border-radius: 50%;
        position: absolute;
        z-index: 5;
        text-align: center;
        box-sizing: border-box;
        opacity: 0.5;
      }
      .bottom-images-button:hover {
        background-color: #EEEBEF;
        border: 1px solid #E4EBFF;
      }
      .bottom-images-button.left {
        left: 10px;
        bottom: 40px;
        cursor: pointer;
      }
      .bottom-images-button.right {
        right: 10px;
        bottom: 40px;
        cursor: pointer;
      }
      .loading_list {
        position: absolute;
        width: 100%;
        display: none;
        min-height: 210px;
        text-align: center;
        top: 25px;
        left: 0;
      }
      .loading_icon {
        line-height: 210px;
        top: 50%;
        position: absolute;
        left: 50%;
        margin-top: -32px;
        margin-left: -32px;
        -webkit-animation: Loadingrotate 0.75s linear infinite;
        -o-animation: Loadingrotate 0.75s linear infinite;
        animation: Loadingrotate 0.75s linear infinite;
        -webkit-transform: rotate(0deg);
        -moz-transform: rotate(0deg);
        -ms-transform: rotate(0deg);
        -o-transform: rotate(0deg);
        transform: rotate(0deg);
      }
      .loading_list_text {
        position: absolute;
        width: 100%;
        text-align: center;
        left: 0;
        bottom: 20px;
        color: #0063ff;
        font-size: 16px;
      }
      @keyframes Loadingrotate {
          from{
              -webkit-transform: rotate(0deg);
              -moz-transform: rotate(0deg);
              -ms-transform: rotate(0deg);
              -o-transform: rotate(0deg);
              transform: rotate(0deg);
          }
          to{
              -webkit-transform: rotate(360deg);
              -moz-transform: rotate(360deg);
              -ms-transform: rotate(360deg);
              -o-transform: rotate(360deg);
              transform: rotate(360deg);
          }
      }
      @-ms-keyframes Loadingrotate {
          from{
              -webkit-transform: rotate(0deg);
              -moz-transform: rotate(0deg);
              -ms-transform: rotate(0deg);
              -o-transform: rotate(0deg);
              transform: rotate(0deg);
          }
          to{
              -webkit-transform: rotate(360deg);
              -moz-transform: rotate(360deg);
              -ms-transform: rotate(360deg);
              -o-transform: rotate(360deg);
              transform: rotate(360deg);
          }
      }
      @-webkit-keyframes Loadingrotate {
          from{
              -webkit-transform: rotate(0deg);
              -moz-transform: rotate(0deg);
              -ms-transform: rotate(0deg);
              -o-transform: rotate(0deg);
              transform: rotate(0deg);
          }
          to{
              -webkit-transform: rotate(360deg);
              -moz-transform: rotate(360deg);
              -ms-transform: rotate(360deg);
              -o-transform: rotate(360deg);
              transform: rotate(360deg);
          }
      }
      /*loading转圈圈动画  end*/
    </style>
    <!-- script src="../js/jquery.min.js"></script>
		<script type="text/javascript" src="../js/jquery.touchSwipe.min.js"></script>
		<link rel="stylesheet" href="../css/indexpage.css">
		<script  src="/lecture/html/indexpage/indexpage.js"></script> -->
    <title>视频图片测试页</title>
  </head>
  <body>
    <div class="content">
      <div class="header">
        <div style="padding-top: 35px;padding-bottom: 15px;">
          选择场景:
          <div class="select-component" style="margin-right: 20px;">
            <select id="scene" name="选择分类" onchange="gradeChange()">
              <option value="1">智云80</option>
              <option value="2">智云9k</option>
              <option value="3">智云20</option>
            </select>
          </div>
          选择类别:
          <div class="select-component">
            <select id="type" name="选择类别" onchange="changeSelect(this)">
            	<option value="请选择分类">默认分类</option>
              <option value="人">人</option>
              <option value="交通工具">交通工具</option>
              <option value="交通标志">交通标志</option>
              <option value="运动道具">运动道具</option>
              <option value="工具">工具</option>
              <option value="动物">动物</option>
              <option value="餐具">餐具</option>
              <option value="水果">水果</option>
              <option value="食物">食物</option>
              <option value="蔬菜">蔬菜</option>
              <option value="家具">家具</option>
              <option value="植物">植物</option>
              <option value="家用电器">家用电器</option>
              <option value="电子产品">电子产品</option>
            </select>
          </div>
        </div>
        <div class="category-box-list" style="margin-bottom: 20px;">
          <div class="out-box">
            <div class="out-box-area">
              <div class="out-box-text">阳光</div>
            </div>
          </div>
          <div class="out-box">
            <div class="out-box-area">
              <div class="out-box-text">植物</div>
            </div>
          </div>
          <div class="out-box">
            <div class="out-box-area">
              <div class="out-box-text">阳光</div>
            </div>
          </div>
          <div class="out-box">
            <div class="out-box-area">
              <div class="out-box-text">植物</div>
            </div>
          </div>
          <div class="out-box">
            <div class="out-box-area">
              <div class="out-box-text">阳光</div>
            </div>
          </div>
          <div class="out-box">
            <div class="out-box-area">
              <div class="out-box-text">植物</div>
            </div>
          </div>
          <div class="out-box">
            <div class="out-box-area">
              <div class="out-box-text">阳光</div>
            </div>
          </div>
          <div class="out-box">
            <div class="out-box-area">
              <div class="out-box-text">植物</div>
            </div>
          </div>
          <div class="out-box">
            <div class="out-box-area">
              <div class="out-box-text">阳光</div>
            </div>
          </div>
          <div class="out-box">
            <div class="out-box-area">
              <div class="out-box-text">植物</div>
            </div>
          </div>
          <div class="out-box">
            <div class="out-box-area">
              <div class="out-box-text">阳光</div>
            </div>
          </div>
          <div class="out-box">
            <div class="out-box-area">
              <div class="out-box-text">植物</div>
            </div>
          </div>
          <div class="out-box">
            <div class="out-box-area">
              <div class="out-box-text">阳光</div>
            </div>
          </div>
          <div class="out-box">
            <div class="out-box-area">
              <div class="out-box-text">植物</div>
            </div>
          </div>
        </div>
        <div class="secondary_navigation_box">
          <div class="secondary_navigation_list">
            <div class="secondary_nav_box secondary_nav_add" onclick="NavTab('1',this)" bi_name="智能识别-上传图片">
              <div class="secondary_li">上传图片</div>
            </div>
            <div class="secondary_nav_box" onclick="NavTab('2',this)" bi_name="智能识别-上传视频">
              <div class="secondary_li">上传视频</div>
            </div>
            <div class="secondary_nav_box" onclick="NavTab('3',this)" bi_name="智能识别-上传文件夹">
              <div class="secondary_li">上传文件夹</div>
            </div>
          </div>
        </div>
      </div>
      <div class="section">
        <div class="body-picture">
          <div class="col-md-8 picture_left">
            <div class="col-md-12">
              <div class="picture_max_border imgBox">
                <div class="loadingBox loading_Box" style="z-index: 2; display: none;">
                  <div style="left:0;" class="loading loadan"></div>
                </div>
                <div id="picture_icon1" class="picture_icon">
                  <img id="img1" src="//res-img2.huaweicloud.com/content/dam/cloudbu-site/archive/china/zh-cn/ei/experiencespace/v1/images/explorationarea/ei-vertifyimage-4-big-01.jpg" style="width: auto;height: auto;">
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-4 picture_right">
            <div class="md-4 picture_right">
              <div class="identify_result">
                <div class="identify_result_list">
                  <div class="picture_right_box">
                    <div class="result_title">
                      识别结果
                    </div>
                    <div class="row_ro">
                      <div class="identify_result_box3" id="identify_result_box1" style="display: block;">

                      </div>
                    </div>
                    <!-- 上传按钮 -->
                    <form class="col-md-10" id="upload"  method="post" enctype="multipart/form-data">
                      <div>
                        <div class="local_upload" id="local_upload">
                            选择图片
                          <input id="file" type="file" class="local_upload_file" onchange="changePicture(this)" bi_name="图像标签-本地上传处理">
                        </div>
                        <div id="testUploadVideo" class="local_upload" id="local_upload" onclick="testUploadImg()">
                            上传图片
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
              <div></div>
              <div></div>
            </div>
          </div>
        </div>
        <div class="body-video">
          <div class="col-md-8 picture_left">
            <div class="col-md-12">
              <div class="picture_max_border imgBox">
                <div class="loadingBox  loading_Box" style="z-index: 2; display: none;">
                  <div style="left:0;" class="loading loadan">
                  </div>
                </div>
                <div class="picture_icon">
                  <video id="tags_video_play" class="imgBox_picture tags_movie_picture_max picture_max tags_movie_imgBox_picture" controls="controls" src="https://bbs-video.huaweicloud.com/video/media/20181226/20181226162956_95858/ei-vertifyvideo-5-big4.mp4" style="width: 100%; height: 540px;"></video>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-4 picture_right">
            <div class="md-4 picture_right">
              <div class="identify_result">
                <div class="identify_result_list">
                  <div class="picture_right_box">
                    <div class="result_title">
                      识别结果
                    </div>
                    <div class="row_ro">
                      <div class="identify_result_box3" id="identify_result_box2" style="display: block;">
                        <div class="identify_result_ciy col-md-5">
                          <div class="ciy_box">
                            <div class="ciy_box_desc">阳光</div><span>87.3%</span>
                          </div>
                        </div>
                        <div class="identify_result_ciy col-md-5">
                          <div class="ciy_box">
                            <div class="ciy_box_desc">植物</div><span>67.2%</span>
                          </div>
                        </div>
                        <div class="identify_result_ciy col-md-5">
                          <div class="ciy_box">
                            <div class="ciy_box_desc">自然</div><span>65.9%</span>
                          </div>
                        </div>
                        <div class="identify_result_ciy col-md-5">
                          <div class="ciy_box">
                            <div class="ciy_box_desc">绿色</div><span>61.1%</span>
                          </div>
                        </div>
                        <div class="identify_result_ciy col-md-5">
                          <div class="ciy_box">
                            <div class="ciy_box_desc">树</div><span>51.6%</span>
                          </div>
                        </div>
                        <div class="identify_result_ciy col-md-5">
                          <div class="ciy_box">
                            <div class="ciy_box_desc">秋天</div><span>47.8%</span>
                          </div>
                        </div>
                        <div class="identify_result_ciy col-md-5">
                          <div class="ciy_box">
                            <div class="ciy_box_desc">叶子</div><span>47.5%</span>
                          </div>
                        </div>
                        <div class="identify_result_ciy col-md-5">
                          <div class="ciy_box">
                            <div class="ciy_box_desc">美景</div><span>46.3%</span>
                          </div>
                        </div>
                        <div class="identify_result_ciy col-md-5">
                          <div class="ciy_box">
                            <div class="ciy_box_desc">夏天</div><span>45.4%</span>
                          </div>
                        </div>
                        <div class="identify_result_ciy col-md-5">
                          <div class="ciy_box">
                            <div class="ciy_box_desc">风景</div><span>43.4%</span>
                          </div>
                        </div>
                        <div class="identify_result_ciy col-md-5">
                          <div class="ciy_box">
                            <div class="ciy_box_desc">风光</div><span>43.2%</span>
                          </div>
                        </div>
                        <div class="identify_result_ciy col-md-5">
                          <div class="ciy_box">
                            <div class="ciy_box_desc">树叶</div><span>42.2%</span>
                          </div>
                        </div>
                      </div>
                    </div>
                    <!-- 上传按钮 -->
                    <form class="col-md-10" id="upload" method="post" enctype="multipart/form-data">
                      <div>
                        <div class="local_upload" id="local_upload">
                            选择视频
                          <input id="video" type="file" class="local_upload_file" bi_name="视频标签-本地上传处理">
                        </div>
                        <div id="testUploadVideo" class="local_upload" id="local_upload" onclick="testUploadVideo()">
                            上传视频
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
              <div></div>
              <div></div>
            </div>
          </div>
        </div>
        <div class="body-folder">
          <div class="col-md-8 picture_left">
            <div class="col-md-12">
              <div class="picture_max_border imgBox" style="height: 470px; min-height: 470px;margin-bottom: 20px;">
                <div class="loadingBox loading_Box" style="z-index: 2; display: none;">
                  <div style="left:0;" class="loading loadan">
                  </div>
                </div>
                <div id="picture_icon3" class="picture_icon" style="height: 470px;">
                  <img id="img3" src="//res-img2.huaweicloud.com/content/dam/cloudbu-site/archive/china/zh-cn/ei/experiencespace/v1/images/explorationarea/ei-vertifyimage-4-big-01.jpg"
                    alt="" class="picture_max imgBox_picture" style="width: auto; height: auto;">
                </div>
              </div>
              <!-- 轮播图 -->
              <div class="bottom-images-button left" onclick="imageListClick(this, 'left')"><span><</span></div>
              <div class="bottom-images-button right" onclick="imageListClick(this, 'right')"><span>></span></div>
              <div id="bottom-images-list" class="bottom-images-list row">
                <div class="bottom-image-item col-xs-6 col-md-3">
                  <a href="#" class="thumbnail">
                    <img  onclick="imageItemClick(this)" src="//res-img2.huaweicloud.com/content/dam/cloudbu-site/archive/china/zh-cn/ei/experiencespace/v1/images/explorationarea/ei-vertifyimage-4-big-01.jpg" alt="...">
                    <div style="position: absolute;width: 100%;height: 100%;border: 10px solid #EfABFF;"></div>
                  </a>
                </div>
                <div class="bottom-image-item col-xs-6 col-md-3">
                  <a href="#" class="thumbnail">
                    <img onclick="imageItemClick(this)" src="//res-img1.huaweicloud.com/content/dam/cloudbu-site/archive/china/zh-cn/ei/experiencespace/v1/images/explorationarea/ei-vertifyvideo-5-big1.jpg" alt="...">
                  </a>
                </div>
                <div class="bottom-image-item col-xs-6 col-md-3">
                  <a href="#" class="thumbnail">
                    <img  onclick="imageItemClick(this)" src="//res-img2.huaweicloud.com/content/dam/cloudbu-site/archive/china/zh-cn/ei/experiencespace/v1/images/explorationarea/ei-vertifyvideo-5-big2.jpg" alt="...">
                  </a>
                </div>
                <div class="bottom-image-item col-xs-6 col-md-3">
                  <a href="#" class="thumbnail">
                    <img onclick="imageItemClick(this)" src="//res-img3.huaweicloud.com/content/dam/cloudbu-site/archive/china/zh-cn/ei/experiencespace/v1/images/explorationarea/ei-vertifyvideo-5-big3.jpg" alt="...">
                  </a>
                </div>
                <div class="bottom-image-item col-xs-6 col-md-3">
                  <a href="#" class="thumbnail">
                    <img onclick="imageItemClick(this)" src="//res-img1.huaweicloud.com/content/dam/cloudbu-site/archive/china/zh-cn/ei/experiencespace/v1/images/explorationarea/ei-vertifyvideo-5-big4.jpg" alt="...">
                  </a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-4 picture_right">
            <div class="md-4 picture_right">
              <div class="identify_result">
                <div class="identify_result_list" style="min-height: 613px;">
                  <div class="picture_right_box">
                    <div class="result_title">
                      识别结果
                    </div>
                    <div class="row_ro">
                      <div class="loading_list" style="display: none;">
                         <img src="//res-img1.huaweicloud.com/content/dam/cloudbu-site/archive/china/zh-cn/ei/experiencespace/v1/images/comm/loading.png" class="loading_icon" alt="">
                         <div class="loading_list_text">
                          正在分析中...
                         </div>
                      </div>
                      <div class="identify_result_box3" id="identify_result_box3" style="display: block;">

                      </div>
                    </div>
                    <!-- 上传按钮 -->
                    <form class="col-md-10" id="folderForm" action="../../tset-hd-web/uploadflv/uploadFolder" name="fileUploadForm" method="post" enctype="multipart/form-data" style="position: absolute; bottom: 5px;">
                      <div>
                        <div class="local_upload" id="local_upload">
                            选择文件夹
                          <input id="route" name="route" type="file" class="local_upload_file" bi_name="文件夹标签-本地上传处理" webkitdirectory directory onchange="changeFolder(this)" />
                        </div>
                        <div id="testUploadVideo" class="local_upload" id="local_upload" onclick="testUploadRoute()">
                            上传文件夹
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
              <div></div>
              <div></div>
            </div>
          </div>

        </div>
      </div>
    </div>
  </body>
  <script type="text/javascript">
    // 点击tab
    function NavTab(i, e) {
      // 添加tab选中样式
      $('.secondary_nav_box').removeClass('secondary_nav_add')
      $('.secondary_nav_box').eq(i - 1).addClass('secondary_nav_add')
      //显示隐藏 图片分区
      $('.body-picture').hide()
      $('.body-video').hide()
      $('.body-folder').hide()
      switch (i) {
        case '1':
          $('.body-picture').show()
          break;
        case '2':
          $('.body-video').show()
          break;
        case '3':
          $('.body-folder').show()
          break;
        default:
          $('.body-picture').show()
          break;
      }
    }
    // 显示强调效果
    function clickCiyBox(itemStr ,t){
      let boxObj = itemStr
      var idStr = boxObj.center_x + '' + boxObj.center_y + '' + boxObj.width + '' + boxObj.height
      idStr = idStr.replace(/\./g,"_")
      console.log($("#"+idStr))
      if (t == 3) {
        let w = $("#img3").width()
        let h = $("#img3").height()
        let imgLeft = boxObj.center_x * w
        let imgTop = boxObj.center_y * h
        let imgW = boxObj.width * w
        let imgH = boxObj.height * h
        var leftOffset = 0
        if (w < 740) {
          leftOffset = (740 - w) * 0.5
        }
        if ($('#'+idStr).length === 0) {
          var box = $("<div id="+idStr+"></div>")
          box.css({
            "border":"4px solid yellow",
            "left": imgLeft - (imgW * 0.5) + leftOffset + "px",
            "top": imgTop - (imgH * 0.5) + "px",
            "width": imgW + "px",
            "height": imgH + "px",
            "position": "absolute",
            "box-sizing": "border-box"
          });
          $('#picture_icon3').append(box)
        } else {
          $('#'+idStr).remove()
        }
      } else {
        let w = $("#img1").width()
        let h = $("#img1").height()
        let imgLeft = boxObj.center_x * w
        let imgTop = boxObj.center_y * h
        let imgW = boxObj.width * w
        let imgH = boxObj.height * h
        var leftOffset = 0
        if (w < 740) {
          leftOffset = (740 - w) * 0.5
        }
        if ($('#'+idStr).length === 0) {
          var box = $("<div id="+idStr+"></div>")
          box.css({
            "border":"4px solid yellow",
            "left": imgLeft - (imgW * 0.5) + leftOffset + "px",
            "top": imgTop - (imgH * 0.5) + "px",
            "width": imgW + "px",
            "height": imgH + "px",
            "position": "absolute",
            "box-sizing": "border-box"
          });
          $('#picture_icon1').append(box)
        } else {
          $('#'+idStr).remove()
        }
      }

    }
    function gradeChange(){
      var objS = document.getElementById("scene");
      var val = objS.options[objS.selectedIndex].value;
      if(val == 2 || val == 3){
        alert("暂不支持该场景");
        $("#scene").val('1');
      }
      val = objS.options[objS.selectedIndex].value;
      if(val==1){
        $("#type").empty();
        var html = '<option value="0">默认分类</option>';
         html +='<option value="人">人</option>';
         html +='<option value="交通工具">交通工具</option>';
         html +='<option value="交通标志">交通标志</option>';
         html +='<option value="运动道具">运动道具</option>';
         html +='<option value="工具">工具</option>';
         html +='<option value="动物">动物</option>';
         html +='<option value="餐具">餐具</option>';
         html +='<option value="水果">水果</option>';
         html +='<option value="食物">食物</option>';
         html +='<option value="蔬菜">蔬菜</option>';
         html +='<option value="家具">家具</option>';
         html +='<option value="植物">植物</option>';
         html +='<option value="家用电器">家用电器</option>';
         html +='<option value="电子产品">电子产品</option>';
         $('#type').append(html);
      }
    }
    // 修改分类
    function changeSelect(e) {
      console.log(e.value)
      let typeName = e.value
      $.ajax({
        url: "../../tset-hd-web/uploadflv/homelabel",
        type: "post",
        data: { "label": typeName },
        cache: false, // 上传文件无需缓存
        success: function(res) {
          // console.log(res)
          $('.category-box-list .out-box').remove();
          var obj = res.split(',');
          var html = "";
          for (var i in obj) {
          	html += "<div class=\"out-box\">";
          	html += "<div class=\"out-box-area\">";
            html += "<div class=\"out-box-text\">" + obj[i];
            html += "</div></div></div>";
          }
          $('.category-box-list').append(html);
        },
        error: function() { }
      })
    }
    // 修改图片
    function changePicture(e) {
      var _URL = window.URL || window.webkitURL;
      var file, img;
      if ((file = e.files[0])) {
        img = new Image();
        img.onload = function() {
            $('#img1').attr('src', this.src);
            // console.log(e.width)
        };
        img.src = _URL.createObjectURL(file);
        $('#picture_icon1 div').remove()
      }
    }
    // 图片列表 滚动
    function imageListClick(e, t) {
      // console.log($('.bottom-images-list').scrollLeft())
      if (t === 'left') {
        let l = $('.bottom-images-list').scrollLeft()
        $('.bottom-images-list').scrollLeft(l - 100)
      } else {
        let l = $('.bottom-images-list').scrollLeft()
        $('.bottom-images-list').scrollLeft(l + 100)
      }
    }
    // 点击图片列表
    var timerInt = null
    function imageItemClick (e) {
      // $('.bottom-images-list img').css({"border": "1px solid #E4EBFF"})
      // $(e).css({"border": "10px solid #A4ABFF"})
      $("#img3").attr("src", e.src);
      // console.log($(e).attr('data-src'))
      if (!$(e).attr('data-src')) {
        return
      }
      $('#identify_result_box3 .identify_result_ciy.col-md-5').remove();
      $('#picture_icon3 div').remove()
      $('.loadingBox.loading_Box').show()
      $('.loading_list').show()
      if (timerInt) {
        clearInterval(timerInt);
      }
      timerInt = setInterval(function(){
        $.ajax({
          url: "../../tset-hd-web/uploadflv/analys",
          type: "post",
          data: { "path": $(e).attr('data-src') },
          cache: false, // 上传文件无需缓存
          success: function(res) {
            // alert("生成成功");

            $("#img3").attr("src","/tset-hd-web/uploadflv/showImage?path="+JSON.parse(res).entity.filename);
            var obj = jQuery.parseJSON(JSON.parse(res).entity.jsonArray);
            $('.loadingBox.loading_Box').hide()
            $('.loading_list').hide()
            clearInterval(timerInt);
            var html = "";
            for (var i in obj) {
            	html += "<div class=\"identify_result_ciy col-md-5\">";
            	html += "<div class=\"ciy_box\" onclick='clickCiyBox(" + JSON.stringify(obj[i].relative_coordinates) + ", 3)'>";
            	html += "<div class=\"ciy_box_desc\">" + obj[i].name + "</div><span>" + obj[i].confidence + "</span>";
            	html += "</div></div>";
            }
            $('#identify_result_box3').append(html);
          },
          error: function() {
            // alert("生成失败");
            $('.loadingBox.loading_Box').hide()
            $('.loading_list').hide()
          }
        })
      }, 5000);

    }

    //上传图片
    function testUploadImg() {
    	var type = document.getElementById("type");
      var val = type.options[type.selectedIndex].value;
      alert("系统正在识别，请稍后......")
      var fileObj = document.getElementById("file").files[0]; //获取文件对象
	    var formFile = new FormData();
	    formFile.append("param", "100"); //传入需要传的参数
	    formFile.append("file", fileObj); // 加入文件对象
	    var data = formFile;
      $('#identify_result_box1 .identify_result_ciy.col-md-5').remove();
      // 动画 扫描图片 开启：$('.loadingBox.loading_Box').show()，结束：$('.loadingBox.loading_Box').hide()
      $('.loadingBox.loading_Box').show()
	    $.ajax({
	      url: "../../tset-hd-web/uploadflv/uploadSave",
	      type: "post",
	      data: data,
	      cache: false, // 上传文件无需缓存
	      processData: false, // 用于对data参数进行序列化处理 这里必须false
	      contentType: false, // 必须
	      success: function(res) {
          alert("生成成功");

	        $('.loadingBox.loading_Box').hide()
	        $("#img1").attr("src","/tset-hd-web/uploadflv/showImage?path="+JSON.parse(res).entity.filename);
	        var obj = jQuery.parseJSON(JSON.parse(res).entity.jsonArray);
	        var html = "";
	        for (var i in obj) {
	        	html += "<div class=\"identify_result_ciy col-md-5\">";
	        	html += "<div class=\"ciy_box\" onclick='clickCiyBox(" + JSON.stringify(obj[i].relative_coordinates) + ")'>";
	        	html += "<div class=\"ciy_box_desc\">" + obj[i].name + "</div><span>" + obj[i].confidence + "</span>";
	        	html += "</div></div>";
          }
	        $('#identify_result_box1').append(html);
	        // alert(JSON.parse(res).result); //接收前台返回json字符串
	      },
	      error: function() {
	        alert("生成失败");
          $('.loadingBox.loading_Box').hide()
	      }
	    })
    }

    //上传视频
    function testUploadVideo() {

    }

    //文件路径
    var formData = null;
    function testUploadRoute() {
    	$.ajax({
        url: "../../tset-hd-web/uploadflv/uploadFolder",
        type: 'POST',
        data: formData,
        processData: false,    // ⑧告诉jQuery不要去处理发送的数据
        contentType: false, // 必须
        success: function (res) {
            // alert(responseStr);
          $('#bottom-images-list .bottom-image-item').remove();
          var obj = res.split(',');
          $("#img3").attr("src","/tset-hd-web/uploadflv/showImage?path=" + obj[0]);
          var html = "";
          for (var i in obj) {
            html += "<div class=\"bottom-image-item col-xs-6 col-md-3\">";
            html += "<a href=\"#\" class=\"thumbnail\">";
            html += "<img onclick=\"imageItemClick(this)\" data-src=\"" + obj[i] + "\" src=\"/tset-hd-web/uploadflv/showImage?path=" + obj[i] + "\" alt=\"...\"/>"
            html += "</a></div>";
          }
          $('#bottom-images-list').append(html);
        }
        ,
        error : function (responseStr) {
          alert(responseStr);
        }
      });
    }

    //文件数量限制
    var filesCount=2000;
    //文件夹大小限制 2000M
    var filesSize=2147483648;
    //实际的文件数量
    var actual_filesCount=0;
    //实际的文件夹大小
    var actual_filesSize=0;
    function changeFolder(e) {
      // console.log(e)
      //判断是否选中文件
       var file=$("#fileFolder").val();
       if(file!=''){
           $("#msg").text('');
       }
       var files = e.files; // FileList
       //文件数量
       actual_filesCount = files.length;
       if(actual_filesCount > filesCount){
          $("#msg").text("文件过多，单次最多可上传"+filesCount+"个文件");
          return;
       }
       for (var i = 0, f; f = files[i]; ++i){
           actual_filesSize += f.size;
           if(actual_filesSize > filesSize){
              $("#msg").text("单次文件夹上传不能超过"+filesSize+"/1024/1024M");
              return;
           }
       }
      formData = new FormData();
      var imgList = []
      $('#bottom-images-list .bottom-image-item').remove();
      for(var i = 0;i < files.length;i++){
        formData.append("file", files[i]);
        var _URL = window.URL || window.webkitURL;
        var file, img;
        if (i == 0) {
          if ((file = files[0])) {
            img = new Image();
            img.onload = function() {
               $('#img3').attr('src', this.src);
            };
            img.src = _URL.createObjectURL(file);
          }
        }
        if ((file = files[i])) {
          img = new Image();
          img.onload = function() {
            imgList.push(this.src)
            var html = "";
            html += "<div class=\"bottom-image-item col-xs-6 col-md-3\">";
            html += "<a href=\"#\" class=\"thumbnail\">";
            html += "<img  onclick=\"imageItemClick(this)\" src=\"" + this.src + "\" alt=\"...\"/>"
            html += "</a></div>";
            $('#bottom-images-list').append(html);
          };
          img.src = _URL.createObjectURL(file);
        }
      }
    }
  </script>
</html>
