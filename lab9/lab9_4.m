clear all; close all; clc;
it = 17; 
a = pi - pi/5; b = pi + pi/5; % Przykładowy przedział (możesz dostosować)
f = @(x) sin(x);% definicja funkcji
fp = @(x) cos(x);% definicja pochodnej funkcji

x = 0:0.01:2*pi;
figure;plot( x, f(x), 'b-', x, fp(x),'r-'); grid; xlabel('x'); title('f(x), fp(x)');
legend('Funkcja','Jej pochodna'); 
pause;
cb = nonlinsolvers( f, fp, a, b, 'sieczna', it );
figure; plot( 1:it,cb,'o-'); xlabel('iter'); ylabel('cb(iter)');
grid on, legend('Sieczna');

 for l=1:it
        if abs(cb(l) - pi) < 0.001 / 100
            disp('przybliżona wartość pi :');
            disp(cb(l));
            break;
        end
    end

pause;

%------------------------------------------------


x1_table=[2, 1, -2];
x2_table=[3, 5, 1];

a_table = [tan(deg2rad(45))/2, 
           tan(deg2rad(5))/2, 
           tan(deg2rad(80))/2];

z_table=[2, 1, 1];
names=["45 deg", "5-10 deg", "80 deg"];

x = linspace(-5, 5, 100);
y_zero=zeros(size(x));
for k=1:3
    a=a_table(k);
    x1=x1_table(k);
    x2=x2_table(k);
    f = @(x) a * (x - x1) .* (x - x2);
    fp = @(x) 2 * a * x - a * (x1 + x2);
    figure;
    plot(x, f(x), 'b-', x, fp(x), 'r-', x, y_zero, "black");
    xlabel('x'); grid on;
    title(names(k));
    legend('Funkcja', 'Jej pochodna');
    pause;

    it = 20;
    a_lim=0; b_lim=5;
    cb = nonlinsolvers(f, fp, a_lim, b_lim, 'sieczna', it);
    figure;
    plot( 1:it,cb,'o-'); xlabel('iter'); ylabel('cb(iter)');
    for l=1:it
        if abs(cb(l) - z_table(k)) < 0.001 / 100
            disp('ilość iteracji dla '+ names(k));
            disp(l);
            break;
        end
    end
    pause;
end