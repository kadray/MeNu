clear all; close all; clc;
it = 20; 
a = pi - pi/5; b = pi + pi/5; % Przykładowy przedział (możesz dostosować)
f = @(x) sin(x);% definicja funkcji
fp = @(x) cos(x);% definicja pochodnej funkcji

x = 0:0.01:2*pi;
figure;subplot(2, 1, 1);plot( x, f(x), 'b-', x, fp(x),'r-'); grid; xlabel('x'); title('f(x), fp(x)');
legend('Funkcja','Jej pochodna'); 
cb = nonlinsolvers( f, fp, a, b, 'newton-raphson', it );
subplot(2, 1, 2);plot( 1:it,cb,'o-'); xlabel('iter'); ylabel('cb(iter)');
grid on, legend('Newton-Raphson');

 for l=2:it
        if abs(cb(l) - pi) < 0.001 / 100
            disp('przybliżona wartość pi :');
            disp(cb(l));
            disp(l + " iteracji")
            break;
        end
    end

pause;

%------------------------------------------------


x1_table=[1, 2, -2];
x2_table=[5, 3, 1];

a_table = [tan(deg2rad(5))/2, 
           tan(deg2rad(45))/2, 
           tan(deg2rad(80))/2];

names=["5-10deg", "45deg", "80deg"];

x = linspace(-5, 5, 100);
y_zero=zeros(size(x));
iters=[];
for k=1:3
    a=a_table(k);
    x1=x1_table(k);
    x2=x2_table(k);
    f = @(x) a * (x - x1) .* (x - x2);
    fp = @(x) 2 * a * x - a * (x1 + x2);
    figure;
    subplot(2, 1, 1);
    plot(x, f(x), 'b-', x, fp(x), 'r-', x, y_zero, "black");
    xlabel('x'); grid on;
    title(names(k));
    legend('Funkcja', 'Jej pochodna');

    it = 20;
    a_lim=0; b_lim=2.5;
    cb = nonlinsolvers(f, fp, a_lim, b_lim, 'newton-raphson', it);
    subplot(2, 1, 2);
    plot( 1:it,cb,'o-'); xlabel('iter'); ylabel('cb(iter)');
    for l=1:it
        if abs(cb(l) - x1_table(k)) < 0.001 /100 || abs(cb(l) - x2_table(k)) < 0.001 /100
            disp('ilość iteracji dla '+ names(k));
            disp(l);
            iters(k)=l;
            break;
        end
    end
    pause;
end
plot(1:3, iters)