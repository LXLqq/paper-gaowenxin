%_____________________________________________________________________________________________ %
%  Butterfly Optimization Algorithm (BOA) source codes demo V1.0                               %
%                                                                                              %
%  Author and programmer: Sankalap Arora                                                       %
%                                                                                              %
%         e-Mail: sankalap.arora@gmail.com                                                     %
%                                                                                              %
%  Main paper: Sankalap Arora, Satvir Singh                                                    %
%              Butterfly optimization algorithm: a novel approach for global optimization	   %
%              Soft Computing, in press,                                                       %
%              DOI: https://doi.org/10.1007/s00500-018-3102-4                                  %
%___________________________________________________________________________________________   %
%

clear all 
clc
warning off all

SearchAgents_no=30; % Number of search agents
Max_iteration=500; % Maximum number of iterations

Function_name='F2';

[lb,ub,dim,fobj]=Get_Functions_details(Function_name);

[Best_score,Best_pos,cg_curve]=BOA(SearchAgents_no,Max_iteration,lb,ub,dim,fobj);

% semilogy(cg_curve,'Color','b')
semilogy(cg_curve,'b')
%plot(1:N_iter,result,'--r')
%hold on
%set(gcf,'position',[5,5,13,11])%%����ͼƬ��С
%set(gca,'FontSize',6); % �������ִ�С��ͬʱӰ���������ע��ͼ���������
% xlabel('iteration');
% ylabel('lg(Ŀ�꺯��ֵ)');
title('Convergence curve')
xlabel('Iteration');
ylabel('Best score obtained so far');
%ylabel('Ŀ�꺯��ֵ');
legend('BOA','WOA','FPA','CWBOA');

display(['The best solution obtained by BOA is : ', num2str(Best_pos)]);
display(['The best optimal value of the objective funciton found by BOA is : ', num2str(Best_score)]);


