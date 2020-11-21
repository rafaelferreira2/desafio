class Helpers
    include Capybara::DSL
    
    def checkpoint
        spinner = page.find('#livelo-spinner')
        while spinner.visible? do
            sleep 5
        end
    end

    def alerta_cookie
        find('section.notification--show div.notification__container')
    end

    def autorizar_cookie
        if alerta_cookie.visible?
            alerta_cookie.find('#btn-authorizeCoookies').click
        end
    end

    def fechar_alerta_cookie
        if alerta_cookie.visible?
            alerta_cookie.find('span.icon-x').click
        end
    end

end