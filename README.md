# Arquitetura-MVP

- Model: respresentação dos dados
- View: 
1. apenas exibe. 
2. View e controladoras de view (configurações e eventos da interface do usuário)
3. Passa as AÇÕES e OUVE atualizações da PRESENTER
- Presenter: toda a lógica (via delegate). Não é dependente da UIKIT

- DELEGATE: uma classe entrega (ou delega) algumas de suas responsabilidades para uma instancia de outra classe
- PROTOCOLO: apenas definem (regras ou requisitos) funções e propriedade e não as implementa
* Outras classes podem adotar essas regras e fornecer uma implementação real, sem que se conheça a implementação real
  
