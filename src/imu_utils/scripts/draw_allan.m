clear 
close all

dt = dlmread('../data/velod/data_imu_gyr_t.txt');         
data_x = dlmread('../data/velod/data_imu_gyr_x.txt'); 
data_y= dlmread('../data/velod/data_imu_gyr_y.txt'); 
data_z = dlmread('../data/velod/data_imu_gyr_z.txt'); 
data_draw=[data_x data_y data_z] ;

data_sim_x= dlmread('../data/velod/data_imu_sim_gyr_x.txt'); 
data_sim_y= dlmread('../data/velod/data_imu_sim_gyr_y.txt'); 
data_sim_z= dlmread('../data/velod/data_imu_sim_gyr_z.txt'); 
data_sim_draw=[data_sim_x data_sim_y data_sim_z] ;


figure
loglog(dt, data_draw , 'o');
% loglog(dt, data_sim_draw , 'x');
xlabel('time:sec');                
ylabel('Sigma:deg/h');             
% legend('x','y','z');      
grid on;                           
hold on;                           
loglog(dt, data_sim_draw , '-');
