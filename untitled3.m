%demo.mp4地址:
%https://www.bilibili.com/video/BV1ir4y1c7oJ/?spm_id_from=333.788.recommend_more_video.0&vd_source=ce326d826fe4664e0244987e20661adb
clc;clear;
%取出帧图
%path1='D:\ONEDRIVE\OneDrive - hdkho\桌面\Edge detection\demo.mp4';
path2='D:\ONEDRIVE\OneDrive - hdkho\桌面\Edge detection\pict\';
%frames=VideoReader(path1);
%Framenum=frames.NumFrames;
%for i=1:Framenum 
%    frame=read(frames, i);
%    j = strcat (path2,num2str(i),'.jpg');
%    imwrite(frame, j)
%end
%%读入帧图 
%for i=1:Framenum 
for i=100:5:8820
    picture_name=strcat(num2str(i),'.jpg');
    data=imread([path2,picture_name]);
    data=rgb2gray (data);
    %BW=edge(data,'Roberts');
    %figure(1);imshow(BW);title('newton%s apple')
    %%Roberts算子边缘检测
    BW=edge(data,'Sobel');
    figure(1);imshow(BW);title('newton%s apple')
end